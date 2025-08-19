# stuff to install manually

## Note
when installing tools such as mingw-64 or winrar, do keep in mind that on windows, you need to manually set them in environment variables -> PATH

## Nvim-ts-autotag
requires the corresponding [parsers](https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#supported-languages) from treesitter to function

## Blink
check the font of the terminal, needs to be a [patched nerd font](https://www.nerdfonts.com/font-downloads) (no mono)

## Dadbod + Dotenv
nothing here to install,
[use env to keep connection](https://github.com/kristijanhusak/vim-dadbod-ui)\
:Dotnet verbose to see what is in the env

## Easy-dotnet
:MasonInstall rzls\
:MasonInstall jq\
:MasonInstall netcoredbg\
:MasonInstall roslyn\
dotnet sdk and runtime ([visual studio installer](https://visualstudio.microsoft.com/downloads/))
dotnet tooling (terminal commands, requires sdk)
- dotnet tool install -g EasyDotnet
- dotnet tool install -g dotnet-outdated-tool
- dotnet tool install -g dotnet-ef

## Lazy
git

## Mason
[python](https://www.python.org/downloads)
[java](https://www.oracle.com/java/technologies/downloads)
[node / npm](https://nodejs.org/en/download)

Windows:
- [7z](https://7-zip.org/)
- [mingw-64](https://www.mingw-w64.org/downloads)
- [git](https://git-scm.com/downloads)
- add powershell from the microsoft store or check of pwsh

Unix
- git
- curl (probably installed by default)
- unzip
- gzip

if you wanna go crazy, use :checkhealth and install as many warnings as you want

## Treesitter
[mingw-64](https://www.mingw-w64.org/downloads)
git

## Telescope
[ripgrep](https://github.com/BurntSushi/ripgrep) (for grep functionality)

