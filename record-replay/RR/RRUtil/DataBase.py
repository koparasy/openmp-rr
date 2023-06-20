import json
from pathlib import Path
import numpy as np

class DB:
    def __init__(self, fn, defaultKey):
        # Get full path of database
        self.fn = str(Path(fn).resolve())
        self.Data = dict()
        self.MetaData = dict()
        self.DefaultExecTime = None
        self.Default = defaultKey

        Data = { 'MetaData' : {} , 'Stats' : {} }
        if Path(self.fn).exists():
            with open(self.fn, 'r') as fd:
                Data = json.load(fd)

        self.Data = Data['Stats']
        self.MetaData = Data['MetaData']
        #If some execution uses some previous DB format
        #count is not recorded. Add in the DB, to match the
        #new format

        self.Baseline()

    def Update(self):
        Data = { 'MetaData' : self.MetaData , 'Stats' : self.Data }
        with open(self.fn, 'w') as fd:
            json.dump(Data, fd, indent = 6)

    def getTotalSize(self):
        if not self.MetaData:
            return -1
        return self.MetaData['totalExperiments']

    def setMetadata(self, mData):
        self.MetaData = mData
        self.Update()

    def __len__(self):
        count = 0
        for k, v in self.Data.items():
            count += v['count']
        return count

    def getBaseline(self):
        if self.Default in self.Data:
            return self.Duration(self.Default)

    def Baseline(self):
        if self.Default in self.Data:
            self.DefaultExecTime = self.Duration(self.Default)

    def __contains__(self, key):
        return key in self.Data

    def Duration(self, key):
        if key not in self.Data:
            raise RuntimeError(f"Key {key} not in Data, cannot compute speedup")

        #We ground performance gain
        if not self.Data[key]['valid']:
            return 1E12

        duration = np.array([ v[-1] for v in self.Data[key]['dynamic']]).mean()
        return duration

    def Speedup(self, key):
        if isinstance(self.DefaultExecTime, type(None)):
            self.Baseline()

        if isinstance(self.DefaultExecTime, type(None)):
            raise RuntimeError(f"'Baseline not in Data, cannot compute speedup")

        if key not in self.Data:
            raise RuntimeError(f"Key {key} not in Data, cannot compute speedup")

        #We ground performance gain
        if not self.Data[key]['valid']:
            return 0.01

        duration = self.Duration(key)
        speedup= self.DefaultExecTime / duration
        return speedup

    def GetSpeedUps(self):
        X = list()
        Y = list()
        configs = list()
        for key in self.Data.keys():
            if key == self.Default:
                continue
            x = dict([v.split('=') for v in key.split('-')])
            for k,v in x.items():
                if v == 'None':
                    x[k] = -1
                else:
                    x[k] = int(v)

            y = self.Speedup(key)
            for i in range(0, self.Data[key]['count']):
                X.append(x)
                Y.append(y)
            configs.append(key)
        return configs, X, Y

    # Add key in database, if key exists increase counter
    # and ignore parameters
    def Add(self, key, static, dynamic, duration, Valid):
        if key not  in self.Data:
            self.Data[key] = dict()
            self.Data[key]['static'] = list()
            self.Data[key]['dynamic'] = list()
            self.Data[key]['duration'] = list()
            self.Data[key]['count'] = 1
            self.Data[key]['valid'] = Valid
            if Valid:
              self.Data[key]['static'] += static
              self.Data[key]['dynamic'] += dynamic
              self.Data[key]['duration'] += duration
        else:
            self.Data[key]['count'] += 1

        self.Update()
