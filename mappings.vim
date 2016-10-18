call MMUpdate()
if g:map_index == 1
	map <C-n> :NERDTreeToggle<CR>
	map <C-c> :tabclose<CR>
	command! -n=? -complete=dir -bar CSCopeToggle :call cscope#findInteractive(expand('<cword>'))
	command! -n=? -complete=dir -bar LocationList :call ToggleLocationList()

"	map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
endif
