# zsh-tgenv

zsh plugin for installing and loading [tgenv](https://github.com/cunymatthieu/tgenv.git)
>Inpired by [zsh-pyenv](https://github.com/mattberther/zsh-pyenv)

## Usage

Once the plugin installed, `tgenv` will be available

### Using [Antigen](https://github.com/zsh-users/antigen)

Bundle `zsh-tgenv` in your `.zshrc`

```
antigen bundle ptavares/zsh-tgenv
```

### Using [zplug](https://github.com/b4b4r07/zplug)

Load `zsh-tgenv` as a plugin in your `.zshrc`

```
zplug "ptavares/zsh-tgenv"
```

### Using [zgen](https://github.com/tarjoilija/zgen)

Include the load command in your `.zshrc`

```
zget load ptavares/zsh-tgenv
```

### As an [Oh My ZSH!](https://github.com/robbyrussell/oh-my-zsh) custom plugin

Clone `zsh-tgenv` into your custom plugins repo and load as a plugin in your `.zshrc`

```shell
git clone https://github.com/ptavares/zsh-tgenv ~/.oh-my-zsh/custom/plugins/zsh-tgenv
```

```
plugins+=(zsh-tgenv)
```

Keep in mind that plugins need to be added before `oh-my-zsh.sh` is sourced.

### Manually

Clone this repository somewhere (`~/.zsh-tgenv` for example) and source it in your `.zshrc`

```shell
git clone https://github.com/ptavares/zsh-tgenv ~/.zsh-tgenv
```

```
source ~/.zsh-tfenv/zsh-tfenv.plugin.zsh
```

### License

[MIT](LICENCE)
