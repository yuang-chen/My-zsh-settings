## install ZSH
```
export CXXFLAGS=' -fPIC'
export CFLAGS=' -fPIC'
./Util/preconfig
./configure --prefix=/path/to/install/zsh
make -j && make install
```

## deploy oh-my-zsh
oh-my-zsh with two plugins: autojump and fzf
```
mv .oh-my-zsh ~/ 
mv .autojump ~/
mv .fzf ~/
```