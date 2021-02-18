git clone https://gitlab.com/jallbrit/bonsai.sh ~/bin/bonsai.sh
chmod +x ~/bin/bonsai.sh/bonsai.sh
mkdir -p ~/.local/bin
ln -s ~/bin/bonsai.sh/bonsai.sh ~/.local/bin/bonsai

echo "bonsai.sh -n -L 30 -g 35,20 > ~/.my_bonsai_art.txt
neofetch --ascii ~/.my_bonsai_art.txt --ascii_colors 11 3 10 2 0
cd ~/dev" > ~/.zshrc
