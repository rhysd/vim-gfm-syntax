if (exists('g:loaded_gfm_syntax') && g:loaded_gfm_syntax) || &compatible
    finish
endif

if exists('g:gfm_syntax_enable')
    echohl WarningMsg | echom 'g:gfm_syntax_enable was renamed to g:gfm_syntax_enable_always. Please update your configuration.' | echohl None
    let g:gfm_syntax_enable_always = g:gfm_syntax_enable
else
    let g:gfm_syntax_enable_always = get(g:, 'gfm_syntax_enable_always', 1)
endif
let g:gfm_syntax_enable_filetypes = get(g:, 'gfm_syntax_enable_filetypes', [])

let g:gfm_syntax_highlight_inline_code = get(g:, 'gfm_syntax_highlight_inline_code', 1)
let g:gfm_syntax_highlight_mention = get(g:, 'gfm_syntax_highlight_mention', 1)
let g:gfm_syntax_highlight_strikethrough = get(g:, 'gfm_syntax_highlight_strikethrough', 1)
let g:gfm_syntax_highlight_emoji = get(g:, 'gfm_syntax_highlight_emoji', 1)
let g:gfm_syntax_highlight_table = get(g:, 'gfm_syntax_highlight_table', 1)
let g:gfm_syntax_highlight_issue_number = get(g:, 'gfm_syntax_highlight_issue_number', 1)
let g:gfm_syntax_highlight_checkbox = get(g:, 'gfm_syntax_highlight_checkbox', 1)
let g:gfm_syntax_emoji_conceal = get(g:, 'gfm_syntax_emoji_conceal', 0)

let g:loaded_gfm_syntax = 1
