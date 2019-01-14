# Vimfiles

**Vimfiles** are configuration files for the Vim editor. It includes editor preferences, colorscheme, font definitions, plugins, custom functions and more.

**This project is my personal Vimfiles**. Feel free to send me suggestions / problems through the [issues page](https://github.com/lucascaton/vimfiles/issues/new) or you can contribute by sending improvements through the [Pull Requests page](https://github.com/lucascaton/vimfiles/pulls).

## How to use?

Clone this repository into your home directory as `~/.vim` and then install the plugins. Such as:

    git clone https://github.com/lucascaton/vimfiles.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    vim +PlugInstall +qall

Copy the `Hack` ([NerdFonts](https://nerdfonts.com/) compatible) font:

    # macOS
    cp ~/.vim/fonts/Hack\ Regular\ Nerd\ Font\ Complete.ttf ~/Library/Fonts/

    # Linux
    cp ~/.vim/fonts/Hack\ Regular\ Nerd\ Font\ Complete.ttf ~/.fonts

Install the following tools if you want to review your JavaScript code:

    npm install -g eslint
    npm install -g coffeelint

## Color Schemes

* base16-ocean *(current)*
* Other ["base16" themes](http://chriskempson.github.io/base16/)

## Fonts

Included fonts:

* Hack
* Roboto Mono
* Monaco

## Plugins

| Plugin                                                           | Description                                                         | Interesting links                  |
| :--------------------------------------------------------------- | :------------------------------------------------------------------ | :--------------------------------- |
| [ALE](https://github.com/w0rp/ale)                               | Asynchronous Lint Engine                                            |                                    |
| [Ack.vim](https://github.com/mileszs/ack.vim)                    | Frontend for ack / ag (the_silver_searcher)                         |                                    |
| [Base16](https://github.com/chriskempson/base16-vim)             | Amazing colorschema                                                 |                                    |
| [Colorizer](https://github.com/lilydjwg/colorizer)               | Colorize all text in the form #rrggbb or #rgb                       |                                    |
| [CtrlP](https://github.com/ctrlpvim/ctrlp.vim)                   | Fuzzy file, buffer, mru, tag, etc. finder                           |                                    |
| [Fugitive](https://github.com/tpope/vim-fugitive)                | A git wrapper so awesome, it should be illegal                      |                                    |
| [Nerdtree](https://github.com/scrooloose/nerdtree)               | A tree explorer plugin                                              |                                    |
| [Rename](https://github.com/danro/rename.vim)                    | Basically does a ":saveas <newfile>" then removes the old filename  |                                    |
| [Rhubarb.vim](https://github.com/tpope/vim-rhubarb)              | GitHub extension for fugitive.vim                                   |                                    |
| [Sensible.vim](https://github.com/tpope/vim-sensible)            | Defaults everyone can agree on                                      |                                    |
| [Smartpairs](https://github.com/gorkunov/smartpairs.vim)         | Fantastic selection, replaces hard keys combination like vi{ or va" |                                    |
| [Snipmate](https://github.com/msanders/snipmate.vim)             | Implements some of TextMate's snippets                              |                                    |
| [Sparkup (Zen-coding)](https://github.com/rstacruz/sparkup)      | A parser for a condensed HTML format                                | [Zen coding](http://goo.gl/E4BVWd) |
| [Tabular](https://github.com/godlygeek/tabular)                  | Text filtering and alignmentClone                                   |                                    |
| [Tcomment](https://github.com/tomtom/tcomment_vim)               | An extensible & universal comment vim-plugin                        |                                    |
| [Vim Abolish](https://github.com/tpope/vim-abolish)              | Easily search for, substitute, and abbreviate variants of a word    | [Vim Casts](http://goo.gl/CsfUJ6)  |
| [Vim Airline](https://github.com/bling/vim-airline)              | Lean & mean status / tabline                                        |                                    |
| [Vim Coffee Script](https://github.com/kchmck/vim-coffee-script) | CoffeeScript support for Vim                                        |                                    |
| [Vim Easymotion](https://github.com/easymotion/vim-easymotion)   | Provides a much simpler way to use some motions in Vim              |                                    |
| [Vim Endwise](https://github.com/tpope/vim-endwise)              | Wisely add "end" in ruby                                            |                                    |
| [Vim Gitgutter](https://github.com/airblade/vim-gitgutter)       | Shows a git diff in the gutter (sign column)                        |                                    |
| [Vim Match-up](https://github.com/andymass/vim-matchup)          | Even better % - navigate and highlight matching words               |                                    |
| [Vim Rails](https://github.com/tpope/vim-rails)                  | Ruby on Rails power tools                                           |                                    |
| [Vim Ruby Runner](https://github.com/henrik/vim-ruby-runner)     | Execute Ruby into an output buffer                                  |                                    |

## Vim in a GUI

If you want to use Vim in a GUI, you can use MacVim in macOS or gVim in Linux. Download it from:

* [Macvim](https://github.com/macvim-dev/macvim/releases) (macOS)
* [gVim](https://apps.ubuntu.com/cat/applications/vim-gnome/) (Ubuntu Linux)

## Learn Vim

Visit the following sites to learn more about Vim:

* [Screencast "17 tips for Vim" (in Portuguese)](https://www.lucascaton.com.br/2011/12/13/screencast-1-17-dicas-para-o-vim/)
* [Learn Vim Progressively](http://yannesposito.com/Scratch/en/blog/Learn-Vim-Progressively/)
* [Vim Adventures](http://vim-adventures.com/)
* [Vimcasts](http://vimcasts.org)
* [Using Vim as a Complete Ruby on Rails IDE](http://biodegradablegeek.com/2007/12/using-vim-as-a-complete-ruby-on-rails-ide/)
* [Why, oh WHY, do those #?@! nutheads use vi?](http://www.viemu.com/a-why-vi-vim.html)
* [Byte of Vim](http://www.swaroopch.com/notes/Vim)

## Other dotfiles

You can find my dotfiles here: [lucascaton/dotfiles](https://github.com/lucascaton/dotfiles).

## Credits

Created and maintained by **Lucas Caton**:

* [Website / blog](https://www.lucascaton.com.br/)
* [Twitter](http://twitter.com/lucascaton)

## License

**The MIT License (MIT)**

**Copyright (c) 2010 - 2019 Lucas Caton**

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
