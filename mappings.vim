call MMUpdate()
if g:map_index == 1
	map <C-n> :NERDTreeToggle<CR>
	map <C-c> :tabclose<CR>
	map <F2> :call Open_file() <CR>
	map <F3> :call Call_find_in_files() <CR>
	map <F4> :call Call_find_in_cr_file() <CR>
"	map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
endif
