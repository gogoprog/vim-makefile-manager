
command! -bar MakefileManagerSelect :lua MM_select()
command! -bar MakefileManagerMake :call MM_make()

let g:MakefileManager_path = get(g:, 'MakefileManager_path', "")

lua <<EOF
local function read_file(path)
    local file = io.open(path, "r")
    if not file then return nil end
    local content = file:read "*a"
    file:close()
    return content
end

local tmpfilepath = "/tmp/makefilemanager"

function MM_select()
  local path = vim.eval("g:MakefileManager_path")

  vim.command(":silent !find -iname makefile | fzf --header=\"MakefileManager: Select Makefile...\" > " .. tmpfilepath)
  local result = read_file(tmpfilepath)

  vim.command(":let g:MakefileManager_path=fnamemodify('" .. result .. "', ':h')")
end
EOF

function MM_make()
  set makeprg=make
  if empty(g:MakefileManager_path)
    execute ':Make'
  else
    execute ':Make -C' . g:MakefileManager_path
  end
endfunction

