This doc details the steps necessary to build a copy of Inazuma Eleven 3 - Sekai e no Chousen - The Ogre!! from the sources contained in this repository.

### 0. Clone the repository

Using a terminal or git client, clone this repository to your local device. All the steps that followed should be performed in the directory to which you cloned this repository.

### 1. Install Twl SDK

The game uses the version 5.4 of the [TwlSDK](https://twlsdk.randommeaninglesscharacters.com/download/TwlSDK/TwlSDK-5_4-20091225a.zip), plus the [patch1](https://twlsdk.randommeaninglesscharacters.com/download/TwlSDK/TwlSDK-5_4-patch1-20100204.zip).
Extract and copy the folder `tools/bin` from the TwlSDK into the folder `tools` in your `ie3ogres` clone. At the end of this operation, you should have the file `tools/bin/makelcf.exe` inside your `ie3ogres` clone. Copy the folder `include` into the folder `lib/TwlSDK` in your `ie3ogres` clone. Finally, copy `include/nitro/specfiles/ARM9-TS.lcf.template` and `include/nitro/specfiles/mwldarm.response.template` into the project root.

### 2. Dependencies

#### Linux

Building the ROM requires the following packages. If you cannot find one or more of these using your package distribution, it may be under a different name.

* make
* git
* build-essentials (build-essential on Ubuntu)
* binutils-arm-none-eabi
* wine (to run the mwcc executables)
* python3 (for asm preprocessor)
* libpng-devel (libpng-dev on Ubuntu)
* pkg-config
* pugixml (libpugixml-dev on Ubuntu)

NOTE: If you are using Arch/Manjaro or Void you will only need base-devel instead of build-essentials or make or git. You will still need wine.

#### Windows

Before following the respective guides, please install devkitARM and ensure the DEVKITPRO and DEVKITARM variables are added to bashrc such that:

Msys2:
```console
export DEVKITPRO=C:/devkitPro
export DEVKITARM=${DEVKITPRO}/devkitARM
```

Cygwin:
```console
export DEVKITPRO=/cygdrive/c/devkitPro
export DEVKITARM=${DEVKITPRO}/devkitARM
```

You will still require the following packages:

* make
* git
* build-essentials
* libpng-devel
* pugixml
* pkg-config

Install them using either the Cygwin package manager or using pacman on Msys2.

**NOTE FOR MSYS2:** You will need to compile and install [libpng](https://www.libpng.org/pub/png/libpng.html) from source.

#### macOS

macOS 10.15 Catalina and later is supported on Intel and ARM64 hardware configurations. On ARM64, Rosetta 2 must be installed, as well as the following dependencies:

* GNU coreutils
* GNU make
* GNU sed
* LLVM clang compiler
* arm-gcc-bin
* git
* libpng
* pkg-config
* pugixml
* wine-crossover (includes wine32on64, required on Catalina and later to run 32-bit x86 EXEs)

They can be installed with the following commands:

```console
$ brew tap osx-cross/homebrew-arm
$ brew tap gcenx/wine
$ brew install coreutils make gnu-sed llvm arm-gcc-bin libpng git pkg-config
$ brew install wine-crossover
```

### 3. Build ROM

If you are using wine, open [platform.mk](./platform.mk) and set `NOWINE` to 0.

Run `make` to build the ROM. The ROM will be output as `build/ie3ojp/ie3ojp.nds`.

There are targets for building and testing changes to individual components without repackaging the ROM. For the ARM9 modules, run `make main`. For the ARM7 module, run `make sub`. For the filesystem, run `make filesystem`.
(At the moment, only `make main` is supported)

At the end of building each of these, there is a checksum verification step. This makes sure that the final product is byte-for-byte equivalent to the retail ROM. To disable this, append `COMPARE=0` to your command.

#### Windows

If you get an error in saving configuration settings when specifying the license file, you need to add a system environment variable called LM_LICENSE_FILE and point it to the license.dat file. Alternatively, run mwccarm.exe from an Administrator command prompt, PowerShell, or WSL session.
