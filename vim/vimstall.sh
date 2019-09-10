#setup my vimrc
echo "source ~/dev/dotfiles/vim/vimrc" >> ~/.vimrc

#install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#install hybrid-material theme
git clone https://github.com/kristijanhusak/vim-hybrid-material ~/.vim/bundle/vim-hybrid-material

#install airline
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline

#install vim-surround
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/surround.git
vim -u NONE -c "helptags surround/doc" -c q

#install nerd tree file browser
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree

#install emmet
cd ~/.vim/bundle
git clone https://github.com/mattn/emmet-vim.git

#install polyglot
cd ~/.vim/bundle
git clone https://github.com/sheerun/vim-polyglot
