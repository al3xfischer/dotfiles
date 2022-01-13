[System.Environment]::SetEnvironmentVariable('XDG_CONFIG_HOME', 'C:/Users/Alex/.config',[System.EnvironmentVariableTarget]::User)

$path = "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"

If (!(test-path $path))
{
	git clone https://github.com/wbthomason/packer.nvim $path
}

try {
	nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync' -c q
}
catch {
	echo 'Unable to init packer.nvim'
}

cp -Recurse -Force C:\Users\Alex\.config\lf $env:LOCALAPPDATA/
