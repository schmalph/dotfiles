" completion with snippets
inoremap <silent><expr> <c-space>
			\ pumvisible() ? coc#_select_confirm() :
			\ coc#expandableOrJumpable() ? "\<c-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump'])\<cr>" :
			\ <sid>check_back_space() ? "\<tab>" :
			\ coc#refresh()

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next='<c-space>'
let g:coc_snippet_last='<s-tab>'
xmap <c-space> <Plug>(coc-snippets-select)
