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
    command! -n=? -complete=dir -bar MyMakeTag :call MyMakeTag()

"	map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
endif

function MyMakeTag()
    " ctags
	" 自定义的LUA函数和变量匹配规则，匹配以下形式
	" function class:func()
	" function class.func()
	" function func()
	" class.VAR = 1
	" class.VAR = {
	" VAR = 1
	" VAR = {
	let myLuaRegex = ' --langdef=MYLUA --langmap=MYLUA:.lua --languages=MYLUA '
	let myLuaRegex = myLuaRegex . ' --regex-MYLUA="/^.*\s*function\s*(\w+):(\w+).*$/\2/f/" '
	let myLuaRegex = myLuaRegex . ' --regex-MYLUA="/^.*\s*function\s*(\w+)\.(\w+).*$/\2/f/" '
	let myLuaRegex = myLuaRegex . ' --regex-MYLUA="/^.*\s*function\s*(\w+)\s*\(.*$/\1/f/" '
	let myLuaRegex = myLuaRegex . ' --regex-MYLUA="/^\s*(\w+)\.([A-Z0-9_]+)\s*=\s*[0-9]+.*$/\2/e/" '
	let myLuaRegex = myLuaRegex . ' --regex-MYLUA="/^\s*(\w+)\.([A-Z0-9_]+)\s*=\s*\{.*$/\2/e/" '
	let myLuaRegex = myLuaRegex . ' --regex-MYLUA="/^\s*([A-Z0-9_]+)\s*=\s*[0-9]+.*$/\1/e/" '
	let myLuaRegex = myLuaRegex . ' --regex-MYLUA="/^\s*([A-Z0-9_]+)\s*=\s*\{.*$/\1/e/" '

    silent execute '!ctags --excmd=pattern --exclude=*.ini -R' . myLuaRegex

    call MyAddTag()
endfunction

function MyAddTag()
    if filereadable("tags")
        set tags=tags
    endif
endfunction
