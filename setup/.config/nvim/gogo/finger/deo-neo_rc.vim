" necocomplete 
function! s:initialize_neocomplete()
  let g:neocomplete#enable_at_startup= 1

  if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
  endif
  if !exists('g:neocomplete#sources#dictionary#dictionaries')
    let g:neocomplete#sources#dictionary#dictionaries = {}
  endif
  if !exists('g:neocomplete#sources#omni#functions')
    let g:neocomplete#sources#omni#functions = {}
  endif
  if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
  endif
  if !exists('g:neocomplete#enable_fuzzy_completion')
    let  g:neocomplete#enable_fuzzy_completion = 0
  endif
  if !exists('g:neocomplete#sources#member#prefix_patterns')
    let  g:neocomplete#sources#member#prefix_patterns = {}
  endif
  if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
  endif

  let g:neocomplete#keyword_patterns._ = '\h\w*'
  "let g:neocomplete#sources#member#prefix_patterns.go = '\.'
  let g:neocomplete#sources#member#prefix_patterns.javascript = '\.'

  let dict = g:neocomplete#sources#dictionary#dictionaries
  let dict.rust     = $HOME . '/.config/nvim/dict/rust.dict'
  let dict.js       = $HOME . '/.config/nvim/dict/js.dict'
  let dict.python   = $HOME . '/.config/nvim/dict/python.dict'
  " let dict.lua      = $HOME . '/.config/nvim/dict/lua.dict'
  let dict.vim      = $HOME . '/.config/nvim/dict/vim.dict'

  "let g:neocomplete#sources#omni#input_patterns.ruby = '[^. *\t]\.\w*\'
  "let g:neocomplete#force_omni_input_patterns.ruby = '[^. *\t]\.\w*\'
  "let g:neocomplete#force_omni_input_patterns.rust = '[^. *\t]\.\w*\|\h\w*::'
  " let g:neocomplete#force_omni_input_patterns.go = '[^.[:digit:] *\t]\.\w*'
  "let g:neocomplete#force_omni_input_patterns.go = '[^.[:digit:] *\t]\.[a-zA-Z]\{3,}'
  " let g:neocomplete#force_omni_input_patterns.ruby   = '[^.[:digit:] *\t]\.\w*'
  let g:neocomplete#force_omni_input_patterns.python = '[^.[:digit:] *\t]\.\w*'
  "let g:neocomplete#force_omni_input_patterns.typescript = '[^.[:digit:] *\t]\.\w*'
  let g:neocomplete#force_omni_input_patterns.typescriptreact = '[^.[:digit:] *\t]\.\w*'
  let g:neocomplete#force_omni_input_patterns.javascript = '[^.[:digit:] *\t]\.\w*'
  " let g:neocomplete#force_omni_input_patterns.r = '[^.[:digit:] *\t]\.\w*'

  
  let g:neocomplete#sources#buffer#disabled_pattern = '\.log\|\.log\.\|\.jax\|Log.txt\|\.tsv'
  let g:neocomplete#enable_ignore_case = 1
  let g:neocomplete#enable_smart_case  = 0
  let g:neocomplete#auto_completion_start_length = 2
  let g:neocomplete#auto_complete_delay_settings = {
        \"javascript" : 100,
        \"typescript" : 100,
        \"python"     : 100,
        \}

  call neocomplete#custom_source('_', 'sorters',  ['sorter_length'])
  call neocomplete#custom_source('_', 'matchers', ['matcher_head'])

  if g:neocomplete#enable_fuzzy_completion
    call neocomplete#custom_source('_', 'matchers', ['matcher_fuzzy'])
  endif

  call neocomplete#custom_source('neosnippet', 'rank',  400)

  call neocomplete#custom_source('include', 'rank', 1)

  if has('patch22')
    let g:neocomplete#enable_auto_select = 1
    inoremap <expr><CR>   pumvisible() ? neocomplete#close_popup()  : "<CR>"
  else
    inoremap <expr><CR>   pumvisible() ? "\<C-n>" . neocomplete#close_popup()  : "<CR>"
  endif

  inoremap <expr><C-n>  pumvisible() ? "\<C-n>" : "\<C-x>\<C-u>\<C-p>"
  "inoremap <expr><C-e>  pumvisible() ? neocomplete#close_popup() : "<End>"
  inoremap <expr><C-e>  pumvisible() ? neocomplete#cancel_popup() . "\<End>" : "\<End>"
  inoremap <expr><C-c>  neocomplete#cancel_popup()
  "inoremap <expr><C-u>  neocomplete#undo_completion()
  inoremap <expr><C-h>  neocomplete#smart_close_popup()."\<C-h>"

  command! -nargs=? -complete=file -bar MakeBufferCache call neocomplete#sources#buffer#make_cache(<q-args>)
endfunction


command! FuzzyMatch call s:fuzzy_match()
function! s:fuzzy_match()
  let g:neocomplete#enable_fuzzy_completon = 1
endfunction

" if !has('win32unix')
"   call s:initialize_neocomplete()
"   call neocomplete#initialize()
" endif
" let g:neocomplete#enable_at_startup = 0
