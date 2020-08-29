# my-ultimate-vim

|Shortcut | Function|
|----|----|
|\<leader\>pv | netrw(left explorer)|
|&#8984; P | ctrlP(bottom explorer)|

![vifm_netrw_ctrlP](/img/vifm_netrw_ctrlP.gif)

## Vim or Neovim

If you use vim, you do setup in ~/.vimrc<br>
For Neovim setup in ~/.config/nvim/init.vim

## Path

`~/.config/nvim/init.vim`<br>
`~/.config/vifm/vifmrc`


## How to install Plugin for vim and Neovim

1. First enter below command in your terminal

**Vim**<br>

-_Unix_
```curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
You can automate the process by putting the command in your Vim configuration file as suggested here.<br>
-_Windows (PowerShell)_
```
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force
```

**Neovim**<br>

-_Unix, Linux_
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
-_Linux (Flatpak)_
```
curl -fLo ~/.var/app/io.neovim.nvim/data/nvim/site/autoload/plug.vim \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
-_Windows (PowerShell)_
```
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$env:LOCALAPPDATA/nvim-data/site/autoload/plug.vim" -Force
```
2. go to vim and enter below command in vim command

  `:PlugInstall`

## .zshrc alias (I use iterm2)
```
# Alias
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias vconfig='vim ~/.config/nvim/init.vim'
alias vfconfig='vim ~/.config/vifm/vifmrc'
alias zconfig='vim ~/.zshrc'
alias vf='vifm'
```

## Frequent use command in vim
`:CocCommand snippets.editSnippets` for your custom snippets (auto-complete) <br>
`:CocList snippets` list all your custom snippets <br>
`:r .config/nvim/init.vim` copy your .vimrc to init.vim (useful when changing editor Vim to Neovim) <br>

## Color Schemes for vifm
[Color schemes](https://github.com/vifm/vifm-colors)

## Caution!
_coc-snippets 설정시 주의 사항_
**snippets의 이름에 따라 적용되는 extension이 다르다.**

path(Mac기준) `~/.config/coc/ultisnips/`<br>
`javascript.snippets` // .js 파일에 적용되는 snippet<br>
`vim.snippets` // .vim* 파일에 적용되는 snippet 

## custom snippets

> customizing your snippets

`:CocCommand snippets.editSnippets`

then open explorer with netrw (in my setting, shortcut is `<leader>pv`, <leader> is spacebar)<br>
Edit **javascript.snippets** for javascript file
![js.snippets](/img/custom_snippets.png)


## Iterm2 key binding

|Key Combintaion | Action |
|------|------|
|&#8984; / | Send:"++"|
|&#8984; p | Send:":CtrlP\n"|

## Reference setup (I got setup from these guys, Thanks!!)

[Ben Awad](https://github.com/makccr/dot)<br>
[ThePrimeagen](https://github.com/erkrnt/awesome-streamerrc/tree/master/ThePrimeagen)<br>
[MAKC](https://github.com/makccr/dot)<br>
[DistroTube](https://www.youtube.com/watch?v=47QYCa8AYG4)<br>
[TheFrugalComputerGuy](https://thefrugalcomputerguy.com/linux/seriespg.php?ser=10002#Vid34)
