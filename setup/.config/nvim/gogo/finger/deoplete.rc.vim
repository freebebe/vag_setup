"________________________________________________________________________________
"                                                                   deoplete.nvim

let g:deoplete#enable_at_startup = 1

" =========================      Set a single option
" --------------------------------------------------
call deoplete#custom#option('auto_complete_delay', 200)
call deoplete#custom#option('smart_case', v:true)
    " 用户输入至少两个字符时再开始提示补全
call deoplete#custom#source('LanguageClient',
            \ 'min_pattern_length',
            \ 2)
    " 字符串中不补全
call deoplete#custom#source('_',
            \ 'disabled_syntaxes', ['String']
            \ )
    " 补全结束或离开插入模式时，关闭预览窗口
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif


" cpsm test
" call deoplete#custom#source('_', 'matchers', ['matcher_cpsm'])
" call deoplete#custom#source('_', 'sorters', [])

call deoplete#custom#source('_', 'matchers',
      \ ['matcher_fuzzy', 'matcher_length'])
call deoplete#custom#source('denite', 'matchers',
      \ ['matcher_full_fuzzy', 'matcher_length'])
" call deoplete#custom#source('eskk,tabnine', 'matchers', [])
call deoplete#custom#source('eskk', 'matchers', [])
" call deoplete#custom#source('buffer', 'mark', '')
" call deoplete#custom#source('_', 'matchers', ['matcher_full_fuzzy'])
" call deoplete#custom#source('_', 'disabled_syntaxes', ['Comment', 'String'])
" call deoplete#custom#source('buffer', 'mark', '*')

"################################################: I want to disable the buffer source.
" call deoplete#custom#option('ignore_sources', {
"       \ '_': ['buffer'],
"       \ 'c': ['tabnine'],
"       \ 'help': ['tabnine'],
"       \ })

call deoplete#custom#source('tabnine', 'rank', 600)
call deoplete#custom#source('tabnine', 'min_pattern_length', 2)
" call deoplete#custom#source('tabnine', 'is_volatile', v:false)
call deoplete#custom#var('tabnine', {
      \ 'line_limit': 300,
      \ 'max_num_results': 5,
      \ 'markers': ['.git/'],
      \ })

call deoplete#custom#source('zsh', 'filetypes', ['zsh', 'sh'])
call deoplete#custom#source('nextword', 'filetypes',
      \ ['markdown', 'help', 'gitcommit', 'text'])

call deoplete#custom#source('_', 'converters', [
      \ 'converter_remove_overlap',
      \ 'converter_case',
      \ 'matcher_length',
      \ 'converter_truncate_abbr',
      \ 'converter_truncate_info',
      \ 'converter_truncate_menu',
      \ ])
call deoplete#custom#source('tabnine', 'converters', [
      \ 'converter_remove_overlap',
      \ 'converter_truncate_info',
      \ ])
call deoplete#custom#source('eskk', 'converters', [])

" call deoplete#custom#source('buffer', 'min_pattern_length', 9999)
" call deoplete#custom#source('clang', 'input_pattern', '\.\w*|\.->\w*|\w+::\w*')
" call deoplete#custom#source('clang', 'max_pattern_length', -1)

call deoplete#custom#option('keyword_patterns', {
      \ '_': '[a-zA-Z_]\k*\(?',
      \ 'tex': '[^\w|\s][a-zA-Z_]\w*',
      \ })

" inoremap <silent><expr> <C-t> deoplete#manual_complete('file')

call deoplete#custom#option({
      \ 'auto_preview': v:true,
      \ 'camel_case': v:true,
      \ 'nofile_complete_filetypes': ['denite-filter', 'zsh'],
      \ 'num_processes': 4,
      \ 'refresh_always': v:false,
      \ 'refresh_backspace': v:false,
      \ 'skip_multibyte': v:true,
      \ })

" call deoplete#custom#option('profile', v:true)
" call deoplete#enable_logging('DEBUG', 'deoplete.log')
" call deoplete#custom#source('clang', 'debug_enabled', 1)


" autocmd MyAutoCmd BufEnter * call s:tabnine_check()
"----------------------------
function! s:tabnine_check() abort
  if finddir('.git') !=# ''
    return
  endif

  " Disable tabnine ource
"----------------------------
"   call deoplete#custom#buffer_option('ignore_sources', ['tabnine'])
" endfunction
" call s:tabnine_check()
