## install ncurses-devel
``` shell
wget http://ftp.gnu.org/gnu/ncurses/ncurses-6.1.tar.gz
tar xzvf ncurses-6.1.tar.gz
cd ncurses-6.1
./configure --prefix=/path/to/install/ncurses --with-shared --without-ada --enable-overwrite
make -j && make install
```
in `.bashrc`, add env variables:
``` shell
NCURSE="/path/to/ncurses-6.1"
export CPPFLAGS="-I${NCURSE}/include" 
export LDFLAGS="-L${NCURSE}/lib" 
```

## install ZSH
``` shell
export CXXFLAGS=' -fPIC'
export CFLAGS=' -fPIC'
./Util/preconfig
./configure --prefix=/path/to/install/zsh 
make -j && make install
```

## deploy oh-my-zsh
plugins: [autojump](https://github.com/wting/autojump#installation), [highlighting](highlighting), [fzf](https://github.com/unixorn/fzf-zsh-plugin)
``` shell
mv .oh-my-zsh ~/ 
mv .autojump ~/
mv .fzf ~/
```

## install power10k theme
A nice [theme](https://github.com/romkatv/powerlevel10k) for oh-my-zsh
```
mv .fonts ~/
fc-cache -fv
git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
exec zsh
```
in `~/.zshrc`: edit `ZSH_THEME="powerlevel10k/powerlevel10k"`

type `powerlevel10k` if the theme needs to be configured

## [oh-my-zsh] Can't update: not a git repository.
``` shell
cd ~/.oh-my-zsh
git init # you've already done this step, so you can skip
git remote add origin https://github.com/robbyrussell/oh-my-zsh.git
git fetch
git reset --hard origin/master
```

## [autosuggestions] cannot find /usr/env/python3
reinstall it with python2.7
``` shell
git clone git://github.com/wting/autojump.git

cd autojump
python install.py
```
## vscode remote setting
in `settings.json` on the remote machine:
```
{
    "terminal.integrated.env.linux": {
        "PATH":"/path/to/ncurses-6.1/bin:${env:PATH}",
        "CPPFLAGS":"-I/path/to/ncurses-6.1/include",
        "LDFLAGS":"-L/path/to/ncurses-6.1/lib" 
    },
    "terminal.integrated.shell.linux": "/path/to/zsh/bin/zsh",
}
```
### references:
[ncurses + zsh + oh-my-zsh](https://jdhao.github.io/2018/10/13/centos_zsh_install_use/)

[ncurses install](https://blog.csdn.net/wuxun1997/article/details/115525735)

[ncurses env](https://unix.stackexchange.com/questions/123597/building-zsh-without-admin-priv-no-terminal-handling-library-found)

[vscode integrated shell](https://github.com/microsoft/vscode-remote-release/issues/38)