nnoremap <silent> gA :set opfunc=AppendAfterOperator<cr>g@

function! AppendAfterOperator(type)
    if a:type ==# 'char' || a:type ==# 'line'
        normal! `]
        call feedkeys('a')
    else
       return
    endif
endfunction
                
