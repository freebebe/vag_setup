" from: https://github.com/fohte/rubocop-daemon
  nnoremap <silent><f8> :ALEFix<cr>

  " nnoremap <silent><f8> :call AleFixResetView()<cr>
  function! AleFixResetView()
    let l:save = winsaveview()
    exec(':ALEFix')
    call winrestview(l:save)
  endfunction

  " let g:ale_ruby_rubocop_executable       = 'rubocop-daemon-wrapper'
  " let g:ale_ruby_rubocop_auto_correct_all = 1
  " let g:ale_javascript_eslint_executable  = 'eslint_d'
  " let g:ale_javascript_eslint_use_global  = 1

  " let g:ale_linters = {
    " \   'javascript': ['eslint'],
    " \   'ruby':       ['rubocop'],
    " \}
"
  " let g:ale_fixers = {
    " \   '*': ['remove_trailing_lines', 'trim_whitespace'],
    " \   'ruby':       ['rubocop'],
    " \   'javascript': ['eslint'],
    " \}

  let g:ale_fix_on_save        = 0
  let g:ale_linters_explicit   = 1
  let g:ale_sign_column_always = 1
  let g:ale_sign_error         = '!!'
  let g:ale_sign_warning       = '~>'
  let g:ale_sign_highlight_linenrs = 1
