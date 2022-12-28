
command! -bar MMInteractiveSelect :call MM_iselect()
command! -bar MMMake :call MM_make()
command! -bar MMSave :call MM_save()
command! -nargs=1 MMSelect :call MM_select(<f-args>)

let g:MakefileManager_path = get(g:, 'MakefileManager_path', "")

function MM_iselect()
  call fzf#run({'source': 'find -iname makefile', 'sink': function('MM_select')})
endfunction

function MM_select(file)
  :let g:MakefileManager_path=fnamemodify(a:file, ':h')
endfunction

function MM_make()
  set makeprg=make
  if empty(g:MakefileManager_path)
    execute ':Make'
  else
    execute ':Make -C' . g:MakefileManager_path
  end
endfunction

function! MM_save_var(name, value)
  if empty(a:value)
  else
    let line="let " . a:name . "=\"" . a:value . "\""
    call writefile([line], ".vimrc", "a")
  end
endfunction

function MM_save()
  :call MM_save_var("g:MakefileManager_path", g:MakefileManager_path)
endfunction

