# 2-2 Assignment (OpenGL)

This project renders a simple OpenGL scene (two opposing pyramids with a red
wireframe outline) and supports basic camera movement.

## Screenshot

![Screenshot](docs/screenshot.png)

## Quick Run (Windows)

Steps:
1) Open this folder after downloading or cloning.
2) Double-click `run.bat`.
3) If SmartScreen appears: "More info" -> "Run anyway".

This repo includes `Debug/2-2_Assignment.exe`, so `run.bat` will just work as
long as `run.bat`, `shaders/`, and `glew32.dll` stay together.

Note: Do not run the EXE directly. Shaders load relative to the working
directory and `run.bat` fixes that.

## Controls

- Mouse: look around
- W/S: move forward/back
- A/D: move left/right
- Esc: quit

## Requirements

- Windows 10/11
- GPU drivers that support OpenGL 4.6 core profile
- `glew32.dll` next to the EXE
- If you get VCRUNTIME140.dll/MSVCP140.dll errors, install the
  Microsoft Visual C++ 2015-2022 Redistributable

## Troubleshooting

- "Could not find 2-2_Assignment.exe"
  - Place `run.bat` in the same folder as `shaders/`
  - Ensure the EXE is either next to `run.bat` or inside `Debug/`
- Shaders not found / black screen
  - Always launch with `run.bat`
  - Keep `shaders/` in the same folder as `run.bat`
- Missing DLL errors (glew32.dll, VCRUNTIME140.dll)
  - Keep `glew32.dll` next to the EXE
  - Install the Visual C++ Redistributable
- Window fails to open
  - Update GPU drivers and confirm OpenGL 4.6 support

## Build (Developers)

1) Open `2-2_Assignment.sln` in Visual Studio 2022 (v143 toolset).
2) Select `Release|Win32` (uses relative include/lib paths in this repo).
3) Build the solution.
4) The EXE will appear in `Release/` (or `Debug/` if you build Debug).
5) Copy `glew32.dll` and the `shaders/` folder next to the EXE and use `run.bat`.

If you must use Debug, update the include/lib paths in the project settings
to point at the local `Libraries/` folder.
