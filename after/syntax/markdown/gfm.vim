if !g:gfm_syntax_enable || index(g:gfm_sytnax_enable_filetypes, &l:filetype) == -1
    finish
endif

" inline code
if g:gfm_syntax_highlight_inline_code
    syn region githubFlavoredMarkdownCode start="\%(^\|[^`\\]\)\zs`[^`]" end="`" display oneline
endif

" mentions
if g:gfm_syntax_highlight_mention
    syn match githubFlavoredMarkdownMention "@\S\+" display
endif

" strikethrough
if g:gfm_syntax_highlight_strikethrough
    syn region githubFlavoredMarkdownStrikethrough start="\~\~" end="\~\~"
endif

" emoji
if g:gfm_syntax_highlight_emoji
    syn match githubFlavoredMarkdownEmoji ":[[:alnum:]_+-]\+:" display
endif

" issue number
if g:gfm_syntax_highlight_issue_number
    syn match githubFlavoredMarkdownIssueNumber "#\@<!#\d\+\>" display
endif

" table
if g:gfm_syntax_highlight_table
    syn match githubFlavoredMarkdownTable "\%(\_^\s*\)\@<=|.\+|\%(\s*\_$\)\@=" contains=githubFlavoredMarkdownTableDelimiter,githubFlavoredMarkdownTableAligner,githubFlavoredMarkdownTableAlignBorder,githubFlavoredMarkdownTableBorderAligner,githubFlavoredMarkdownTableBorder
    syn match githubFlavoredMarkdownTableAlignBorder ":-\+:" contained containedin=githubFlavoredMarkdownTable display
    syn match githubFlavoredMarkdownTableAligner ":-\@=" contained containedin=githubFlavoredMarkdownTableAlignBorder display
    syn match githubFlavoredMarkdownTableAligner "-\@<=:" contained containedin=githubFlavoredMarkdownTableAlignBorder display
    syn match githubFlavoredMarkdownTableBorder "-\+" contained containedin=githubFlavoredMarkdownTableAlignBorder display
    syn match githubFlavoredMarkdownTableDelimiter "\\\@<!|" contained containedin=githubFlavoredMarkdownTable display
endif

if g:gfm_syntax_highlight_checkbox
    syn match githubFlavoredMarkdownCheckBox "\%(\_^\s*-\s\+\)\@<=\[[ x]]" contains=githubFlavoredMarkdownCheckBoxBracket,githubFlavoredMarkdownCheckBoxX
    syn match githubFlavoredMarkdownCheckBoxBracket "\[\|]" contained containedin=githubFlavoredMarkdownCheckBox
    syn keyword githubFlavoredMarkdownCheckBoxX x contained containedin=githubFlavoredMarkdownCheckBox
endif

hi def link githubFlavoredMarkdownCode            Constant
hi def link githubFlavoredMarkdownMention         markdownLinkText
hi def link githubFlavoredMarkdownStrikethrough   Comment
hi def link githubFlavoredMarkdownEmoji           PreProc
hi def link githubFlavoredMarkdownTableDelimiter  Delimiter
hi def link githubFlavoredMarkdownTableAligner    Delimiter
hi def link githubFlavoredMarkdownTableBorder     Type
hi def link githubFlavoredMarkdownIssueNumber     Number
hi def link githubFlavoredMarkdownCheckBoxBracket markdownListMarker
hi def link githubFlavoredMarkdownCheckBoxX       Special
