# vbundle
# vim vbundle插件

# ~/.vimrc 里面的内容

# source ~/.vim/_vimrc       
# autocmd! bufwritepost .vimrc source ~/.vimrc

# 真正的配置在

# ~/.vim/_vimrc

#step:

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim ~/.vimrc  #edit with 

source ~/.vim/_vimrc       

autocmd! bufwritepost .vimrc source ~/.vimrc

#save and then 
:BundleInstall 


