# pyspharm-syl

This is a derivative of pyspharm compiled with the help of intel oneAPI, built on pyspharm version 1.0.9.

## Requires

- python >= 3.9
- Numpy >= 1.24.3
- intel-fortran-rt

## Platform Support

- win_amd64: python 3.9, 3.10, 3.11, 3.12.  
- linux_x86_64: python 3.9, 3.10, 3.11, 3.12. 


## Build Method

### Windows

Install [Intel® HPC Toolkit](https://www.intel.com/content/www/us/en/developer/tools/oneapi/hpc-toolkit-download.html) and then open the `Intel oneAPI command prompt for Intel 64 for Visual Studio 2022` in the start menu.

![](https://github.com/shenyulu/pyspharm-syl/blob/main/fig/readme1.png)

Open [Anaconda](https://www.anaconda.com/download) or python in this terminal.

```powershell
# open python env
python

# or open Anaconda
%windir%\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy ByPass -NoExit -Command "& 'C:\Users\[USER NAME]\anaconda3\shell\condabin\conda-hook.ps1' ; conda activate 'C:\Users\[USER NAME]\anaconda3' "
```

Install the dependencies

```
pip install -r build_requirement_windows.txt
```

Create the wheel binary package

```powershell
.\build_wheel_windows.ps1
```

### Linux

Install [Intel® HPC Toolkit](https://www.intel.com/content/www/us/en/developer/tools/oneapi/hpc-toolkit-download.html) and then activate Intel oneAPI environment

```bash
source /opt/intel/oneapi/setvars.sh
```

Open [Anaconda](https://www.anaconda.com/download) or python in this terminal

```
# open python env
python

# or open Anaconda
__conda_setup="$('/home/[USER NAME]/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/[USER NAME]/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/[USER NAME]/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/[USER NAME]/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
```

Install the dependencies

```
pip install -r build_requirement_linux.txt
```

Tips: For build manylinux wheel, please use `build_requirement_manylinux.txt`

```
pip install -r build_requirement_manylinux.txt
```

- Required in manylinux image environment

Create the wheel binary package

```bash
.\build_wheel_linux.sh

# for manylinux, please run as follows:
.\build_wheel_manylinux.sh
```

## Pyspharm description

Source: https://github.com/jswhit/pyspharm

Requires: Numpy (http://numeric.scipy.org),
and a fortran compiler supported by numpy.f2py,

Please read LICENSE.spherepack

Installation: 

python setup.py install

(to change default fortran compiler you can use e.g.
 python setup.py build config_fc --fcompiler=g95)

View documentation by pointing your browser to html/index.html.

Example programs are provided in the examples directory.

Copyright: (applies only to python binding, Spherepack fortran
source code licensing is in LICENSE.spherepack)

Permission to use, copy, modify, and distribute this software and its
documentation for any purpose and without fee is hereby granted,
provided that the above copyright notice appear in all copies and that
both that copyright notice and this permission notice appear in
supporting documentation.
THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE,
INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO
EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, INDIRECT OR
CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF
USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
PERFORMANCE OF THIS SOFTWARE.

-- Jeff Whitaker <Jeffrey.S.Whitaker@noaa.gov>

## Changelog

#### Version 1.2.0 (2024.3.25)
- Change build system from `numpy.distutils` to [meson-python]([meson-python 0.16.0.dev0](https://meson-python.readthedocs.io/en/latest/)).
- Change the default C compiler to `icx`, and the default Fortran compiler to `ifx`.

#### Version 1.0.9 (2023.11.19)

- Support direct installation of wheel without compilation for both the Windows and Linux platform.

