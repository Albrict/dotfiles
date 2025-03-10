let mapleader = " "

" Navigate between windows in terminal mode
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
" Exit terminal mode
tnoremap <C-e> <C-\><C-n>

nnoremap <leader>t :tab term<CR>
" Enable Cscope support
if has("cscope")
    " Use both cscope and ctag for 'ctrl-]', ':ta', and more
    set cscopetag

    " Check cscope for symbol definitions before ctags
    set csto=0

    " Add cscope database
    if filereadable("cscope.out")
        cs add cscope.out
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif

    " Key mappings for Cscope
    nnoremap <leader>cs :cs find s <C-R>=expand("<cword>")<CR><CR>
    nnoremap <leader>cg :cs find g <C-R>=expand("<cword>")<CR><CR>
    nnoremap <leader>cc :cs find c <C-R>=expand("<cword>")<CR><CR>
    nnoremap <leader>ct :cs find t <C-R>=expand("<cword>")<CR><CR>
    nnoremap <leader>ce :cs find e <C-R>=expand("<cword>")<CR><CR>
    nnoremap <leader>cf :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nnoremap <leader>ci :cs find i <C-R>=expand("<cfile>")<CR><CR>
    nnoremap <leader>cd :cs find d <C-R>=expand("<cword>")<CR><CR>
endif 
