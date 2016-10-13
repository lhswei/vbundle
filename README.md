# vbundle
# vim vbundle插件

# ~/.vimrc 里面的内容

# source ~/.vim/.vimrc       
# autocmd! bufwritepost .vimrc source ~/.vimrc

# 真正的配置在

# ~/.vim/.vimrc

#step:

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/lhswei/mygit.git ~/temp
cp ~/temp/mappings.vim ~/.vim/
cp ~/temp/.vimrc ~/.vim/

vim ~/.vimrc  #edit with 
source ~/.vim/.vimrc       
autocmd! bufwritepost .vimrc source ~/.vimrc

#save and then 
:BundleInstall 


