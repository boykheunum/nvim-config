set noexpandtab
" Cài đặt coc.vim
" Cấu hình Coc
let g:coc_global_extensions = [
      \ 'coc-json',      
      \ 'coc-python',    
      \ 'coc-html',     
      \ 'coc-css',       
      \ 'coc-clangd',    
      \ 'coc-vimlsp'    
      \ ]

" Thiết lập phím tắt cho gợi ý code
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Sử dụng phím Enter để chọn từ gợi ý đầu tiên
inoremap <C-CR> coc#_select_confirm()

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction
