call apm install atom-material-ui atom-material-syntax vim-mode-plus
call npm install -g node-gyp
call apm install platformio-ide-terminal advanced-open-file prettier-atom ex-mode
call apm install file-icons
cat styles.less >> %userprofile%\.atom\styles.less
cat keymap.cson >> %userprofile%\.atom\keymap.cson
rm -rf node_modules
rm -rf package-lock.json
