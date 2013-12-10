# Vimfiles by Lucas Caton

**Vimfiles** are configuration files for the Vim editor. It includes editor preferences, colorscheme and font definitions, plugins, custom functions and more.

**This project is my personal Vimfiles**. Feel free to send me suggestions through the [issues page](https://github.com/lucascaton/vimfiles/issues/new) or to send me improvements through the [Pull Requests page](https://github.com/lucascaton/vimfiles/pulls).

## How to use these vim configs

Clone this repository into your home directory as `~/.vim` and then install the plugins. Such as:

    git clone git://github.com/lucascaton/vimfiles.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    cd ~/.vim
    git submodule update --init

## Colorscheme

* ir_black

## Fonts

These are my favorite fonts:

* Monaco *(my current one)*
* Anonymous Pro
* Inconsolata-dz
* Bitstream Vera Sans Mono

## Plugins

| Plugin                                                             | Description                                                                                                 | Interesting links                                                                                                                            |
| :----------------------------------------------------------------- | :---------------------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------                                                                         |
| [Ack.vim](https://github.com/mileszs/ack.vim)                      | Perl module App::Ack. Ack can be used as a replacement for 99% of the uses of grep.                         |                                                                                                                                              |
| [CtrlP](https://github.com/kien/ctrlp.vim)                         | Full path fuzzy file, buffer, mru and tag finder.                                                           |                                                                                                                                              |
| [Ember.vim](https://github.com/dsawardekar/ember.vim)              | Features for the Emberjs frontend framework                                                                 |                                                                                                                                              |
| [Extradite](https://github.com/int3/vim-extradite)                 | A git commit browser. Extends fugitive.vim.                                                                 |                                                                                                                                              |
| [Fugitive](https://github.com/tpope/vim-fugitive)                  | A git wrapper so awesome, it should be illegal.                                                             |                                                                                                                                              |
| [Gist-vim](https://github.com/mattn/gist-vim)                      | For creating gists.                                                                                         |                                                                                                                                              |
| [HTML5](https://github.com/othree/html5.vim)                       | HTML5 omnicomplete and syntax                                                                               |                                                                                                                                              |
| [Nerdtree](https://github.com/scrooloose/nerdtree)                 | A tree explorer plugin.                                                                                     |                                                                                                                                              |
| [Portkey](https://github.com/dsawardekar/portkey)                  | Navigate files at the speed of Vim.                                                                         |                                                                                                                                              |
| [Rename](https://github.com/danro/rename.vim)                      | A command and function that basically does a ":saveas <newfile>" then removes the old filename on the disk. |                                                                                                                                              |
| [Snipmate](https://github.com/msanders/snipmate.vim)               | Aims to be a concise Vim script that implements some of TextMate's snippets features in Vim.                |                                                                                                                                              |
| [Sparkup (Zen-coding)](https://github.com/rstacruz/sparkup)        | A parser for a condensed HTML format.                                                                       | [http://code.google.com/p/zen-coding/](http://code.google.com/p/zen-coding/)                                                                 |
| [Syntastic](https://github.com/scrooloose/syntastic)               | Syntax checking hacks.                                                                                      |                                                                                                                                              |
| [Tabular](https://github.com/godlygeek/tabular)                    | Text filtering and alignmentClone.                                                                          |                                                                                                                                              |
| [Tcomment](https://github.com/tomtom/tcomment_vim)                 | An extensible & universal comment vim-plugin that also handles embedded filetypes.                          |                                                                                                                                              |
| [Vim Abolish](https://github.com/tpope/vim-abolish)                | Easily search for, substitute, and abbreviate multiple variants of a word.                                  | [http://vimcasts.org/episodes/supercharged-substitution-with-subvert/](http://vimcasts.org/episodes/supercharged-substitution-with-subvert/) |
| [Vim Coffee Script](https://github.com/kchmck/vim-coffee-script)  | CoffeeScript support for Vim                                                                                | [http://kien.github.com/ctrlp.vim/](http://kien.github.com/ctrlp.vim/)                                                                       |
| [Vim Easymotion](https://github.com/Lokaltog/vim-easymotion/)      | It provides a much simpler way to use some motions in Vim.                                                  |                                                                                                                                              |
| [Vim Endwise](https://github.com/tpope/vim-endwise)                | Wisely add "end" in ruby, endfunction/endif/more in Vim script, etc.                                        |                                                                                                                                              |
| [Vim Handlebars](https://github.com/nono/vim-handlebars)           | This plugin is here to help you editing Handlebars files.                                                   |                                                                                                                                              |
| [Vim Matchit](https://github.com/tsaleh/vim-matchit)               | Extended % matching for HTML, LaTeX, and many other languages.                                              |                                                                                                                                              |
| [Vim Ruby Runner](https://github.com/henrik/vim-ruby-runner)       | Execute Ruby into an output buffer, similar to ⌘R in TextMate.                                              |                                                                                                                                              |
| [Vim-rails](https://github.com/tpope/vim-rails)                    | Ruby on Rails power tools.                                                                                  |                                                                                                                                              |

## Vim in a GUI

If you want to use Vim in a GUI, you can use gVim in Linux or MacVim for Mac. Download it from:

* [Macvim](http://code.google.com/p/macvim/downloads/list) (Mac OSX)
* [gVim](https://apps.ubuntu.com/cat/applications/vim-gnome/) (Ubuntu Linux)

## Help Tags

At first usage of Vim, type `:` while in **command mode** and execute:

    Helptags

This will make the plugins documentations available upon `:help` command.

## Learn Vim

Visit the following sites to learn more about Vim:

* [Learn Vim Progressively](http://yannesposito.com/Scratch/en/blog/Learn-Vim-Progressively/)
* [Vim Adventures](http://vim-adventures.com/)
* [Vimcasts](http://vimcasts.org)
* [Screencast "17 tips for Vim" (in portuguese)](http://blog.lucascaton.com.br/?p=1081)
* [Using Vim as a Complete Ruby on Rails IDE](http://biodegradablegeek.com/2007/12/using-vim-as-a-complete-ruby-on-rails-ide/)
* [Why, oh WHY, do those #?@! nutheads use vi?](http://www.viemu.com/a-why-vi-vim.html)
* [Byte of Vim](http://www.swaroopch.com/notes/Vim)

## Credits

Created and maintained by [Lucas Caton](https://github.com/lucascaton):

* [Lucas' blog](http://blog.lucascaton.com.br/)
* [Lucas' twitter](http://twitter.com/lucascaton)

## License

**The MIT License (MIT)**

**Copyright (c) 2010 - 2013 Lucas Caton**

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
