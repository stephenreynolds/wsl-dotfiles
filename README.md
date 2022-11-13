# WSL dotfiles

```
         -/oyddmdhs+:.                stephen@Stephen-PC
     -odNMMMMMMMMNNmhy+-`             ------------------
   -yNMMMMMMMMMMMNNNmmdhy+-           OS: Gentoo Linux on Windows 10 x86_64
 `omMMMMMMMMMMMMNmdmmmmddhhy/`        Kernel: 5.15.68.1-microsoft-standard-WSL2
 omMMMMMMMMMMMNhhyyyohmdddhhhdo`      Uptime: 6 hours, 58 mins
.ydMMMMMMMMMMdhs++so/smdddhhhhdm+`    Packages: 338 (emerge)
 oyhdmNMMMMMMMNdyooydmddddhhhhyhNd.   Shell: zsh 5.9
  :oyhhdNNMMMMMMMNNNmmdddhhhhhyymMh   Terminal: Windows Terminal
    .:+sydNMMMMMNNNmmmdddhhhhhhmMmy   CPU: Intel i7-7700K (8) @ 4.199GHz
       /mMMMMMMNNNmmmdddhhhhhmMNhs:   Memory: 403MiB / 15963MiB
    `oNMMMMMMMNNNmmmddddhhdmMNhs+`
  `sNMMMMMMMMNNNmmmdddddmNMmhs/.
 /NMMMMMMMMNNNNmmmdddmNMNdso:`
+MMMMMMMNNNNNmmmmdmNMNdso/-
yMMNNNNNNNmmmmmNNMmhs+/-`
/hMMNNNNNNNNMNdhs++/-`
`/ohdmmddhys+++/:.`
  `-//////:--.
```

## Install on a new system

```bash
# Create an alias for git to use when working with the repo
echo 'alias dots="git --git-dir $HOME/.dotfiles --work-tree=$HOME"' >> $HOME/.zshrc

# Reload so the new alias can be used
exec zsh

# Clone the dotfiles repo
git clone --bare https://github.com/stephenreynolds/dotfiles.git $HOME/.dotfiles

# Checkout the repo
dots checkout

# Prevent untracked files from showing in dotfiles status
dots config --local status.showUntrackedFiles no
```

## Updating

Use the `dots` alias to update the repository.

### Add/Update

`dots add .zshrc`

### Add all modified without new files

`dots add -u`

### Commit

`dots commit -m "Add .zshrc`

### Push

`dots push`
