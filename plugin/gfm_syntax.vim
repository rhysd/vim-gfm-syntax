if (exists('g:loaded_gfm_syntax') && g:loaded_gfm_syntax) || &cp
    finish
endif

let g:gfm_syntax_enable_inline_code = get(g:, 'gfm_syntax_enable_inline_code', 1)
let g:gfm_syntax_enable_mention = get(g:, 'gfm_syntax_enable_mention', 1)
let g:gfm_syntax_enable_strikethrough = get(g:, 'gfm_syntax_enable_strikethrough', 1)
let g:gfm_syntax_enable_emoji = get(g:, 'gfm_syntax_enable_emoji', 1)
let g:gfm_syntax_enable_table = get(g:, 'gfm_syntax_enable_table', 1)

let g:loaded_gfm_syntax = 1
