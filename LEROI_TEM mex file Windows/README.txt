#---

Compiled with Intel Fortran 2015, Matlab 2016a

# Requires

   * matlab
   * .net framework 4.0
   * windows sdk 7.1
   * intel fortran compiler

# Compile

set mldir=c:\Program Files\MATLAB\R2016a

set include=%include%;%mldir%\extern\include

set lib=%lib%;%mldir%\extern\lib\win64\microsoft

"c:\Program Files (x86)\Intel\Composer XE\bin\ifortvars.bat" intel64

ifort /Qprec /fpp /LD /DMX_COMPAT_32 /DMATLAB_MEX_FILE LEROI_TEM.F90 libmx.lib libmex.lib /link /export:MEXFUNCTION /out:LEROI_TEM.me
xw64

#---
