if (exists('g:loaded_gfm_syntax') && g:loaded_gfm_syntax) || &cp
    finish
endif

let g:gfm_syntax_enable = get(g:, 'gfm_syntax_enable', 1)
let g:gfm_sytnax_enable_filetypes = get(g:, 'gfm_sytnax_enable_filetypes', ['markdown'])

let g:gfm_syntax_highlight_inline_code = get(g:, 'gfm_syntax_highlight_inline_code', 1)
let g:gfm_syntax_highlight_mention = get(g:, 'gfm_syntax_highlight_mention', 1)
let g:gfm_syntax_highlight_strikethrough = get(g:, 'gfm_syntax_highlight_strikethrough', 1)
let g:gfm_syntax_highlight_emoji = get(g:, 'gfm_syntax_highlight_emoji', 1)
let g:gfm_syntax_highlight_table = get(g:, 'gfm_syntax_highlight_table', 1)
let g:gfm_syntax_highlight_issue_number = get(g:, 'gfm_syntax_highlight_issue_number', 1)
let g:gfm_syntax_highlight_checkbox = get(g:, 'gfm_syntax_highlight_checkbox', 1)

let g:loaded_gfm_syntax = 1
