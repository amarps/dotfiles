set number
set ruler
set showcmd

set display=truncate

inoremap <C-g> <esc>
nnoremap s :write<CR> 

syntax on

function! FormatOnSave()
  let l:formatdiff = 1
  pyf /usr/share/clang/clang-format.py
endfunction
autocmd BufWritePre *.hxx, *.cxx, *.cpp, *.cc, *.c, *.h call FormatOnSave()

map <C-K> :pyf /usr/share/clang/clang-format.py<cr>
imap <C-K> <c-o>:pyf /usr/share/clang/clang-format.py<cr>
