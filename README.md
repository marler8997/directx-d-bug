# How to reproduce the bug
```
Just run the `build` script, make sure `dmd` is in your `PATH`.
```

It should print this error:
```
OPTLINK (R) for Win32  Release 8.00.17
Copyright (C) Digital Mars 1989-2013  All rights reserved.
http://www.digitalmars.com/ctg/optlink.html
main.obj(main)
 Error 42: Symbol Undefined _D2D1CreateDevice@12
main.obj(main)
 Error 42: Symbol Undefined _D2D1CreateDeviceContext@12
Error: linker exited with status 2
```

Note that by removing the `-g` flag from the compiler command, the undefined symbol error goes away.

You can also fix the bug by not compiling the `direct.d2d1_1` module.  You can do this by adding this argument to the compiler:
```
-i=-directx.d2d1_1
```
