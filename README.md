# My Custom Linux Setup

## Shell
The shell is a command line interpreter that takes commands as textual input and passes them to the operating system. The default shell in most linux systems is `bash` (Bourne Again SHell).
However, the bash shell is nowadays considered very basic in its supported functionalities.
Other shells like `zsh` (Z Shell) extend bash by providing more features that facilitate the ease of use.
Moreover, Z Shell is supported by a large open source community.

### Z Shell (oh-my-zsh)

Install Z Shell and oh-my-zsh (a plugin manager) with:
```bash
./install-oh-my-zsh.sh
```

In the `~/.zshrc` file swap in the plugins by exchanging the plugin line with:
```bash
plugins=(git sudo copypath zsh-autosuggestions zsh-syntax-highlighting)
```
