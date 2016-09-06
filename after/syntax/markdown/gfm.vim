if !get(b:, 'gfm_syntax_enable', 1)
    finish
endif

" inline code
syn region githubFlavoredMarkdownCode start="[^`]\zs`[^`]" end="`" display

" mentions
syn match githubFlavoredMarkdownMention "@\S\+" display

" strikethrough
syn region githubFlavoredMarkdownStrikethrough start="\~\~" end="\~\~"

" emoji
syn match githubFlavoredMarkdownEmoji ":\w\+:" display

" table
syn match githubFlavoredMarkdownTable "^\s*\(\> \)\?\s*\zs|.\+|\ze\s*$" contains=githubFlavoredMarkdownTableDelimiter,githubFlavoredMarkdownTableAligner,githubFlavoredMarkdownTableBorder
syn match githubFlavoredMarkdownTableDelimiter "|" contained containedin=githubFlavoredMarkdownTable display
syn match githubFlavoredMarkdownTableAligner ":" contained containedin=githubFlavoredMarkdownTable display
syn match githubFlavoredMarkdownTableBorder "[\-+]\+" contained containedin=githubFlavoredMarkdownTable display

hi def link githubFlavoredMarkdownCode Constant
hi def link githubFlavoredMarkdownMention htmlLink
hi def link githubFlavoredMarkdownStrikethrough Comment
hi def link githubFlavoredMarkdownEmoji PreProc
hi def link githubFlavoredMarkdownTableDelimiter Delimiter
hi def link githubFlavoredMarkdownTableAligner Delimiter
hi def link githubFlavoredMarkdownTableBorder Type

