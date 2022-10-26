#setup my vimrc
echo "source ~/dev/dotfiles/vim/vimrc" >> ~/.vimrc

#install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#install hybrid-material theme
#git clone https://github.com/kristijanhusak/vim-hybrid-material ~/.vim/bundle/vim-hybrid-material
# I'm pretty sure this will break the material theme that actually works, so
# don't do it

# install material
git clone https://github.com/kaicataldo/material.vim ~/.vim/bundle/material

# install js syntax?
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript

#install airline
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline

#install airline themes
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes

#install vim-surround
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/surround.git
vim -u NONE -c "helptags surround/doc" -c q

#install nerd tree file browser (obsoleted by explore command)
# cd ~/.vim/bundle
# git clone https://github.com/scrooloose/nerdtree

#install emmet
cd ~/.vim/bundle
git clone https://github.com/mattn/emmet-vim.git

#install polyglot
cd ~/.vim/bundle
git clone https://github.com/sheerun/vim-polyglot

#install autopairs
#May need to change line 416 to the following: return "\<ESC>".cmd."ko\t"
git clone git://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs

#install vim completes me
#git clone git://github.com/ajh17/VimCompletesMe.git ~/.vim/pack/vendor/start/VimCompletesMe

# should install youcompleteme
git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.py

# install rust stuff
git clone --depth=1 https://github.com/rust-lang/rust.vim.git ~/.vim/bundle/rust.vim
