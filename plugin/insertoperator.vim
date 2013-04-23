nnoremap <silent> gA :set opfunc=AppendAfterOperator<cr>g@
nnoremap <silent> gI :set opfunc=InsertBeforeOperator<cr>g@

function! AppendAfterOperator(type)
    if a:type ==# 'char' || a:type ==# 'line'
        normal! `]
        call feedkeys('a')
    else
       return
    endif
endfunction
                
function! InsertBeforeOperator(type)
    if a:type ==# 'char' || a:type ==# 'line'
        normal! `[
        startinsert
    else
       return
    endif
endfunction
                
