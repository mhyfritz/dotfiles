all:
	mkdir -p ~/.vim
	rm -f ~/.vimrc ~/.vim/vundle.vim
	ln -s `pwd`/.vimrc ~/.vimrc
	ln -s `pwd`/vundle.vim ~/.vim
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall
