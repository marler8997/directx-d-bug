@if exist %~dp0directx-d (
    @echo Already downloaded directx-d
) else (
    git clone https://github.com/evilrat666/directx-d %~dp0directx-d
)

dmd -g -i -I=directx-d\src main.d d2d1.omf.lib

@REM NOTE: if you remove the -g flag, it works
@REM dmd -i -I=directx-d\src main.d d2d1.omf.lib

