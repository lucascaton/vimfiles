# Vimfiles

**Vimfiles** are configuration files for the Vim editor. It includes editor preferences, colorscheme, font definitions, plugins, custom functions and more.

**This project is my personal Vimfiles**. Feel free to send me suggestions / problems through the [issues page](https://github.com/lucascaton/vimfiles/issues/new) or you can contribute by sending improvements through the [Pull Requests page](https://github.com/lucascaton/vimfiles/pulls).

## How to use?

Clone this repository into your home directory as `~/.vim` and then install the plugins. Such as:

    git clone https://github.com/lucascaton/vimfiles.git ~/.vim
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    ln -s ~/.vim/vimrc ~/.vimrc
    vim +PluginInstall +qall

**Optional:**

(OS X only) Copy the Monaco font:

    cp ~/.vim/fonts/Monaco+for+Powerline.otf ~/Library/Fonts/

Install jshint, in order to review your JavaScript code:

    sudo npm install -g jshint
    sudo npm install -g coffeelint

## Color Schemes

* base16-ocean *(current)*
* Other ["base16" themes](http://chriskempson.github.io/base16/)

## Fonts

These are my favorite fonts:

* Monaco *(my current one)*
* Anonymous Pro
* Inconsolata-dz
* Bitstream Vera Sans Mono

## Plugins

You can see all plugins in the beginning of
[`vimrc`](https://github.com/lucascaton/vimfiles/blob/master/vimrc) file.

### Interesting blog posts about plugins

* [Vim Casts - Vim Abolish](http://vimcasts.org/episodes/supercharged-substitution-with-subvert/)
* [Sharpen your Vim with snippets](https://medium.com/brigade-engineering/sharpen-your-vim-with-snippets-767b693886db)

## Vim in a GUI

If you want to use Vim in a GUI, you can use MacVim in Mac OS X or gVim in Linux. Download it from:

* [Macvim](https://github.com/macvim-dev/macvim/releases) (Mac OS X)
* [gVim](https://apps.ubuntu.com/cat/applications/vim-gnome/) (Ubuntu Linux)

## Learn Vim

Visit the following sites to learn more about Vim:

* [Screencast "17 tips for Vim" (in Portuguese)](http://blog.lucascaton.com.br/?p=1081)
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

* [Website](http://lucascaton.com.br)
* [Blog](http://blog.lucascaton.com.br/)
* [Twitter](http://twitter.com/lucascaton)

## License

**The MIT License (MIT)**

**Copyright (c) 2010 - 2016 Lucas Caton**

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
