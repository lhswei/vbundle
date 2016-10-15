call MMUpdate()
if g:map_index == 1
	map <C-n> :NERDTreeToggle<CR>
	map <C-M> :tabclose<CR>
	map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
endif
