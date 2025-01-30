# ZDL3 - ergonomic bindings for SDL3

ZDL3 is a Zig wrapper for [SDL3](https://www.libsdl.org) using conventional Zig programming practices.

## Building With ZDL3

Run this to fetch the project files and add the depedency to ```build.zig.zon```:
```bash
zig fetch --save "<TODO>"
```
Add this to ```build.zig```'s ```build``` function before ```b.installArtifact(exe);``` to link the library with your project:
```zig
/// TODO: Write actual include code
const sdl = b.dependency("sdl", .{
    .target = target,
    .optimize = optimize,
});
exe.root_module.addImport("sdl", sdl.module("sdl"));
```
You're all set! Just use include this in your project files that need sdl3:
```zig
const sdl = @import("sdl");
```

### Build options

If you only want to build certain features of SDL3, you can do so in your build.zig file. When calling ```dependency```, you can add your own build options.

TODO: Explain the build options.

## Using ZDL3

ZDL3 has an API very simular to SDL3's apis. You can go to the [SDL3 Wiki](https://wiki.libsdl.org/SDL3/FrontPage), or use the [auto-generated docs]() from ZDL3.

For futher help you can see the examples and tests in the [SDL3 Github](https://github.com/libsdl-org/SDL), or see the [ZDL3 examples directory]().

## Contribution

ZDL3's core tenants are:
 - Easy to include
 - Only include what you need
 - **strong** emphasis on Zig like bindings

Sadly, since people don't have infinite lives, these are at the expense of including every single SDL3 functionality that one could implement. Although the goal is to include all of SDL3's functionality, that takes time and I mainly want to be able to use this for my own projects.

## Progress

ZDL3 has just started development. Here is the sub-system implementation list:
### Done: 
### Needs Tests:
### Work in Progress:
### To be Done:
 - AsyncIO
 - Audio
 - Blendmode
 - Camera
 - Clipboard
 - Dialog
 - Events
 - Gamepad
 - GPU
 - GUID
 - Haptic
 - HIDAPI
 - Hints
 - Init
 - IOStream
 - Joystick
 - Keyboard
 - Keycode
 - Messagebox
 - Metal
 - Misc
 - Mouse
 - Pen
 - Pixels
 - Properties
 - Rect
 - Render
 - Scancode
 - Sensor
 - Surface
 - Touch
 - Tray
 - Version
 - Video
 - Vulkan
### Unapplicable to Zig:
 - Assert
 - Atomic
 - Bits
 - Endian
 - Mutex
 - Platform
 - Stdinc
 - Thread
 - Time
 - Timer
### Don't know:
 - CPUInfo
 - Error
 - Filesystem
 - Intrinsics
 - Locale
 - Log
 - Main
 - Power
 - Process
 - SharedObject
 - Storage
 - System