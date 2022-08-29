## install ZSH
```
export CXXFLAGS=' -fPIC'
export CFLAGS=' -fPIC'
./Util/preconfig
./configure --prefix=/path/to/install/zsh
make -j && make install
```

## deploy oh-my-zsh
plugins: [autojump](https://github.com/wting/autojump#installation), [highlighting](highlighting), [fzf](https://github.com/unixorn/fzf-zsh-plugin)
```
mv .oh-my-zsh ~/ 
mv .autojump ~/
mv .fzf ~/
```