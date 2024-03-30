# initc
Initializes a C project folder to the current directory.

The project has the following structure:

```
<project-name>/
├── bin/
├── build/
├── include/
├── src/
│   └── main.c
└── makefile
```

# How to install?
1. Clone this project to `/home/<user>/scripts/` with git. Create the folder `scripts` if it doesn't exist already.
2. Append the following line to your shell's config file (~/.bashrc, ~/.cshrc, etc.): `alias initc="/home/<user/scripts/initc/initc.sh>"`. This creates a persistent alias so that you don't have to type the full path to the program every time you want to run it.
3. This program's default shell is bash. You can change it by modifying the shebang `#!/bin/bash` in the beginning of `initc.sh`.
4. Run with `initc <project-name>`.

# How to build projects?
1. Make sure you have `make` installed.
2. In the project's root directory run `make`.
3. The makefile will use files inding in .c from `src/` as source files, files ending in .h from `include/` as header files. It will build them as object files to `build/`and finally link them to a `main` executable in `bin/`.
