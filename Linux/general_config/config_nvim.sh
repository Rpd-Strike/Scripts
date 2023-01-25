NVIM_PATH=$HOME/.config/nvim

git clone https://github.com/AstroNvim/AstroNvim $NVIM_PATH

git clone git@github.com:Rpd-Strike/AstroNvimConf.git $NVIM_PATH/lua/user

nvim  --headless -c 'autocmd User PackerComplete quitall'
