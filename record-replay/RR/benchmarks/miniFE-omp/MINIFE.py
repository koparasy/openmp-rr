import itertools
import json
import math
import os
import sys
from pathlib import Path
import numpy as np
import argparse
import re

import RRUtil.Benchmark as Bench
import RRUtil.Device as Device
import RRUtil.Utilities as Utilities

class MINIFE(Bench.MakeBenchmark):
    def __init__(self, prof, **kwargs):
        kwargs.pop("executable", None)
        kwargs.pop('resultsdir', None)
        kwargs.pop('root', None)
        super().__init__(prof, "miniFE.x", os.path.split(os.path.realpath(__file__))[0], **kwargs)

    def build(self, fn=None, useCase=None):
        if fn is None:
            return super().build({ 'LEFLAGS' : Device.GetCompileOptions(self.Device) })

        leOptions = Device.GetCompileOptions(self.Device) + f' -mllvm --bo-omp-autotune={fn}'
        return super().build({'LEFLAGS' : leOptions}, useCase)

    def clean(self):
        return super().clean()

    def command(self):
        return  f"{self.executableDir}/miniFE.x -nx 200 -ny 200 -nz 200"

    def env(self):
        return ''

    def getApplicationTime(self, stdout):
        exec_time_pattern = '__ExecutionTime__:(.*)'
        tmp =  re.findall(exec_time_pattern, stdout)
        return tmp[0]

