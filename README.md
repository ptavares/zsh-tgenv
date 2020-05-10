# zsh-tgenv

zsh plugin for installing and loading [tgenv](https://github.com/cunymatthieu/tgenv.git)
>Inpired by [zsh-pyenv](https://github.com/mattberther/zsh-pyenv)

## Table of content

- [zsh-tgenv](#zsh-tgenv)
  - [Usage](#usage)
  - [Updating tgenv](#updating-tgenv)
  - [License](#license)

## Usage

Once the plugin installed, `tgenv` will be available

- Using [Antigen](https://github.com/zsh-users/antigen)

Bundle `zsh-tgenv` in your `.zshrc`

```shell
antigen bundle ptavares/zsh-tgenv
```

- Using [zplug](https://github.com/b4b4r07/zplug)

Load `zsh-tgenv` as a plugin in your `.zshrc`

```shell
zplug "ptavares/zsh-tgenv"
```

- Using [zgen](https://github.com/tarjoilija/zgen)

Include the load command in your `.zshrc`

```shell
zget load ptavares/zsh-tgenv
```

- As an [Oh My ZSH!](https://github.com/robbyrussell/oh-my-zsh) custom plugin

Clone `zsh-tgenv` into your custom plugins repo and load as a plugin in your `.zshrc`

```shell
git clone https://github.com/ptavares/zsh-tgenv.git ~/.oh-my-zsh/custom/plugins/zsh-tgenv
```

```shell
plugins+=(zsh-tgenv)
```

Keep in mind that plugins need to be added before `oh-my-zsh.sh` is sourced.

- Manually

Clone this repository somewhere (`~/.zsh-tgenv` for example) and source it in your `.zshrc`

```shell
git clone https://github.com/ptavares/zsh-tgenv ~/.zsh-tgenv
```

```shell
source ~/.zsh-tgenv/zsh-tgenv.plugin.zsh
```

## Updating tgenv

The plugin comes with a zsh function to update [tgenv](https://github.com/cunymatthieu/tgenv.git) manually

```shell
# From zsh shell
update_zsh_tgenv
```

## License

[MIT](LICENCE)
