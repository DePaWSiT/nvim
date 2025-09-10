# Stuff to install manually... unfortunately :(

if you wanna go crazy, use :checkhealth and install as many warnings as you want

## Note
when installing tools such as mingw-64 or winrar, do keep in mind that on windows, you need to manually set them in environment variables -> PATH

the mason /bin folder must also be added to path as that is where all the executables are stored

## Nvim-ts-autotag
requires the corresponding [parsers](https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#supported-languages) from treesitter to function

## Blink
check the font of the terminal, needs to be a [patched nerd font](https://www.nerdfonts.com/font-downloads) (no mono)

## Conform
different formatters for different filetypes
```:MasonInstall xmlformatter```\
```:MasonInstall stylua```\
```:MasonInstall prettier```\
```:MasonInstall jq```\
```:MasonInstall csharpier```

## Dadbod + Dotenv
nothing here to install,
[use env to keep connection](https://github.com/kristijanhusak/vim-dadbod-ui)\
```:Dotenv``` to see what is in the env

## Easy-dotnet
```:MasonInstall rzls```\
```:MasonInstall roslyn```\
dotnet sdk and runtime ([visual studio installer](https://visualstudio.microsoft.com/downloads/))
### dotnet tooling (terminal commands, requires sdk)
```dotnet tool install -g EasyDotnet```\
```dotnet tool install -g dotnet-outdated-tool```\
```dotnet tool install -g dotnet-ef```\

## Grug (search and replace)
- [ripgrep](https://github.com/BurntSushi/ripgrep) (for grep functionality)

## Lazy + Snacks
- git
- fd or (debian)fd-find


## Adding a lsp
Assuming that mason/bin is in PATH
1. Get the lsp through mason
2. Add the lsp to the list of servers in nvim_lspconfig_spec.lua
  - for adding the correct name of the lsp, see the [config](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md)\
3. Add to either mason_lspconfig or mason_dap
4. (optional) Configure the lsp if needed

## Mason
- [python](https://www.python.org/downloads)
- [java](https://www.oracle.com/java/technologies/downloads)
- [node / npm](https://nodejs.org/en/download)
- run ```checkhealth``` for other options available

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

## Treesitter
- (Windows only): [mingw-64](https://www.mingw-w64.org/downloads)\
- git
