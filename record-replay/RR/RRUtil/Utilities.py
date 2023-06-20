from pathlib import Path
import subprocess
import os

def createDir(path):
    testPath = Path(path)
    if testPath.exists():
        if not testPath.is_dir():
            print(f'Path already exists {path} and it is not a directory')
            sys.exit()
    else:
        testPath.mkdir(parents=True)
    return str(testPath.resolve())

def execute_command(cmd, **kwargs):
    print('Execute', cmd, 'kwargs', kwargs)
    ContinueOnFailure = kwargs.pop("ContinueOnFailure", False)
    try:
        p = subprocess.run( cmd, **kwargs )
    except subprocess.CalledProcessError as e:
        print('Failed cmd', e.cmd)
        print('ret',e.returncode)
        print('stdout', e.stdout.decode())
        print('stderr', e.stderr.decode())
        print(e)
        assert ContinueOnFailure
        return (-1, None, None)
    except subprocess.TimeoutExpired as e:
        print('Failed cmd', e.cmd)
        print('stdout', e.stdout.decode())
        print('stderr', e.stderr.decode())
        print(e)
        assert ContinueOnFailure
        return (-1, None, None)

    out = None
    err = None
    if 'capture_output' in kwargs and kwargs['capture_output']:
      out = str(p.stdout.decode('utf-8'))
      err = str(p.stderr.decode('utf-8'))
    return (p.returncode, out, err)

