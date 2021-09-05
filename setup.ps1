[System.Environment]::SetEnvironmentVariable('XDG_CONFIG_HOME', 'C:/Users/Alex/.config',[System.EnvironmentVariableTarget]::User)

git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"

nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

cp -Recurse C:\Users\Alex\.config\lf $env:LOCALAPPDATA/
