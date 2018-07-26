call apm install atom-material-ui atom-material-syntax vim-mode-plus
call npm install -g node-gyp
call apm install platformio-ide-terminal advanced-open-file prettier-atom ex-mode
cat styles.less >> %userprofile%\.atom\styles.less
rm -rf node_modules
rm -rf package-lock.json