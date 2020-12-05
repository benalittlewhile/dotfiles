# dotfiles
backup of my dotfiles for various software configurations

![My happy terminal](https://github.com/benalittlewhile/dotfiles/raw/master/terminal.png)

# Iterm2
I absolutely adore my terminal!! It's beautiful and the colors
make me happy, I really couldn't ask for anything else. I'm using 
the following:

* [ZSH with oh my zsh](https://ohmyz.sh/)

  Zsh makes theming super easy, and works really well with my colors. 
  I know agnoster is probably a super typical use case, but it works
  great for me.

* [iterm2 material theme](https://github.com/fehawen/iterm2-material-theme)

  As ported by fehawen from equinusocio's original project. I believe 
  I've edited the background color to play nice with iterm/zsh/vim, but 
  other than that it appears in my profile.json as originally provided.

* [Brew/Homebrew](https://brew.sh)

  An essential piece of any macos installation, brew is great.

* [Neofetch](https://github.com/dylanaraps/neofetch)

  I use neofetch to draw a pretty splash screen every time I open
  my terminal. Looks good, makes me happy. Most of the magic, however, 
  comes from...

* [Bonsai.sh](https://gitlab.com/jallbrit/bonsai.sh)

  Bonsai!! As written by John Allbrit, bonsai.sh generates a happy little
  tree in your terminal. I include a small snippet at the end of my zshrc 
  that calls bonsai.sh from /usr/local/bin and generates a new little 
  tree, then passes that tree to neofetch. The result is a lovely splash 
  screen.

# VS Code
  
  VS Code has become my editor of choice thanks primarily to its excellent
  vim emulation and language/extension support. I've included my settings
  and an install script that should get them working on macos assuming
  vs code itself is already installed.

* [Atom Material Theme](https://marketplace.visualstudio.com/items?itemName=tobiasalthoff.atom-material-theme)
  I have a thing for material colors, and this theme by Tobias Althoff 
  scratches that itch quite nicely.

# Font
I use [Delugia Nerd Font](https://github.com/adam7/delugia-code/),
a powerline-patched version of the cascadia font Microsoft released
with Windows Terminal. I find it pleasant to look at and clear to read.


# A Note
I've moved over from linux/atom/vim/etc to macos, vs code, and
iterm2. As such, the old setup will be maintained for in /old, 
with the most recent files residing in the root directory.

I've also added my windows terminal settings.json, it contains
the settings I prefer for using wsl/Ubuntu for development on 
Windows
