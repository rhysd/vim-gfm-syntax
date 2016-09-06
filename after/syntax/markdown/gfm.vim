if !get(b:, 'gfm_syntax_enable', 1)
    finish
endif

" inline code
if g:gfm_syntax_enable_inline_code
    syn region githubFlavoredMarkdownCode start="[^`]\zs`[^`]" end="`" display
endif

" mentions
if g:gfm_syntax_enable_mention
    syn match githubFlavoredMarkdownMention "@\S\+" display
endif

" strikethrough
if g:gfm_syntax_enable_strikethrough
    syn region githubFlavoredMarkdownStrikethrough start="\~\~" end="\~\~"
endif

" emoji
if g:gfm_syntax_enable_emoji
    syn match githubFlavoredMarkdownEmoji ":\w\+:" display
endif

" table
if g:gfm_syntax_enable_table
    syn match githubFlavoredMarkdownTable "^\s*\(\> \)\?\s*\zs|.\+|\ze\s*$" contains=githubFlavoredMarkdownTableDelimiter,githubFlavoredMarkdownTableAligner,githubFlavoredMarkdownTableBorder
    syn match githubFlavoredMarkdownTableDelimiter "|" contained containedin=githubFlavoredMarkdownTable display
    syn match githubFlavoredMarkdownTableAligner ":" contained containedin=githubFlavoredMarkdownTable display
    syn match githubFlavoredMarkdownTableBorder "[\-+]\+" contained containedin=githubFlavoredMarkdownTable display
endif

hi def link githubFlavoredMarkdownCode Constant
hi def link githubFlavoredMarkdownMention htmlLink
hi def link githubFlavoredMarkdownStrikethrough Comment
hi def link githubFlavoredMarkdownEmoji PreProc
hi def link githubFlavoredMarkdownTableDelimiter Delimiter
hi def link githubFlavoredMarkdownTableAligner Delimiter
hi def link githubFlavoredMarkdownTableBorder Type

