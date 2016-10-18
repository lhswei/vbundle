call MMUpdate()
if g:map_index == 1
	map <C-n> :NERDTreeToggle<CR>
	map <C-c> :tabclose<CR>
	command! -n=? -complete=dir -bar CSCopeToggle :call cscope#findInteractive(expand('<cword>'))
	command! -n=? -complete=dir -bar LocationList :call ToggleLocationList()
    command! -n=? -complete=dir -bar CsFindg :call cscope#find('g', expand('<cword>'))
    command! -n=? -complete=dir -bar CsFindd :call cscope#find('d', expand('<cword>'))
    command! -n=? -complete=dir -bar CsFindc :call cscope#find('c', expand('<cword>'))
    command! -n=? -complete=dir -bar CsFindt :call cscope#find('t', expand('<cword>'))
    command! -n=? -complete=dir -bar CsFinde :call cscope#find('e', expand('<cword>'))
    command! -n=? -complete=dir -bar CsFindf :call cscope#find('f', expand('<cword>'))
    command! -n=? -complete=dir -bar CsFindi :call cscope#find('i', expand('<cword>'))


"	map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
endif
