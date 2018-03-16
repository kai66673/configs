# configs

## awesome
cd ~/.config

rm -rf awesome

ln -s **local-repo-path**/**config-name**/awesome

## vim

cd ~

rm .vimrc

rm -rf .vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s **local-repo-path**/**config-name**/vim/.vim

ln -s **local-repo-path**/**config-name**/vim/.vimrc

cd .vim/plugged/youcompleteme

./install.sh --clang-completer --go-completer
