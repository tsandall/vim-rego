# vim-rego

A Vim plugin for the Rego language that includes support for syntax highlighting.

## Installation

The rego-vim plugin can be installed the old fashion way, by copying them into your `~/.vim` directory, or
using any of the plugin managers (Vundle, etc).

### Vundle Installation

In your `.vimrc` file add the line `Plugin 'tsandall/vim-rego'`, like so:

```
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" ... other plugins here ...

Plugin 'tsandall/vim-rego'

" ... more plugins ... 
" All of your Plugins must be added before the following line
call vundle#end()            " required
```

## Formatting

You can configure Vim to automatically format your Rego policies using `opa
fmt`. Install the [vim-autoformat](https://github.com/Chiel92/vim-autoformat)
plugin then  put this in your `.vimrc`:

```
let g:formatdef_rego = '"opa fmt"'
let g:formatters_rego = ['rego']
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
au BufWritePre *.rego Autoformat
```

If you want to see parse errors that occurred during formatting put this in your
`.vimrc` as well:

```
let g:autoformat_verbosemode = 1
```
