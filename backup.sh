# script to copy latest versions of settings files to this
# repo

#vs code
#clear old versions
rm vs\ code/settings.json
rm vs\ code/keybindings.json
rm vs\ code/extensions.txt

#copy current versions to repo
code --list-extensions >> vs\ code/extensions.txt
cp ~/Library/Application\ Support/Code/User/settings.json vs\ code/settings.json
cp ~/Library/Application\ Support/Code/User/keybindings.json vs\ code/keybindings.json

# zsh
rm iterm2/.zshrc
cp ~/.zshrc iterm2/.zshrc
