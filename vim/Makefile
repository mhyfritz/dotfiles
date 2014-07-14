all:
	mkdir -p ~/.vim
	rm -rf ~/.vimrc ~/.vim/vundle.vim ~/.vim/bundle
	ln -s `pwd`/.vimrc ~/.vimrc
	ln -s `pwd`/vundle.vim ~/.vim
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall
