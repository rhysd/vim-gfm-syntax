if !g:gfm_syntax_enable_always && index(g:gfm_syntax_enable_filetypes, &l:filetype) == -1
    finish
endif

" Inline code
"
" This is `inline` code.
if g:gfm_syntax_highlight_inline_code
    " Note: \%(^\|[^`\\]\)\zs`[^`] does not work (issue #5)
    syn region githubFlavoredMarkdownCode start="\%(^\|[^`\\]\)\@<=`[^`]" end="`" display oneline
endif

" Mentions
"
" @rhysd @foo/bar
if g:gfm_syntax_highlight_mention
    syn match githubFlavoredMarkdownMention "\%(^\|\s\)\@<=@\S\+" display
endif

" Strikethrough
"
" ~~This text is deleted~~
if g:gfm_syntax_highlight_strikethrough
    syn region githubFlavoredMarkdownStrikethrough start="\~\~" end="\~\~"
endif

" Emoji
"
" :dog:
if g:gfm_syntax_highlight_emoji
    syn match githubFlavoredMarkdownEmoji ":[[:alnum:]_+-]\+:" display
    if g:gfm_syntax_emoji_conceal && has('conceal')
        call gfm_syntax#emoji#apply_conceal()
    endif
endif

" Issue number
"
" #123
if g:gfm_syntax_highlight_issue_number
    syn match githubFlavoredMarkdownIssueNumber "#\@<!#\d\+\>" display
endif

" Table
"
" |  A  |  B  |
" | Foo | Woo |
" | Bar | Hoo |
if g:gfm_syntax_highlight_table
    syn match githubFlavoredMarkdownTable "^|.\+|\s*$" contains=
                \githubFlavoredMarkdownTableDelimiter,githubFlavoredMarkdownTableAligner,githubFlavoredMarkdownTableAlignBorder,
                \githubFlavoredMarkdownTableBorderAligner,githubFlavoredMarkdownTableBorder,githubFlavoredMarkdownCode,
                \markdownBoldItalic,markdownBold,markdownItalic,markdownLinkText,markdownIdDeclaration,githubFlavoredMarkdownMention,
                \githubFlavoredMarkdownIssueNumber,githubFlavoredMarkdownStrikethrough,githubFlavoredMarkdownEmoji
    syn match githubFlavoredMarkdownTableAlignBorder ":-\+:" contained containedin=githubFlavoredMarkdownTable display
    syn match githubFlavoredMarkdownTableAligner ":-\@=" contained containedin=githubFlavoredMarkdownTableAlignBorder display
    syn match githubFlavoredMarkdownTableAligner "-\@<=:" contained containedin=githubFlavoredMarkdownTableAlignBorder display
    syn match githubFlavoredMarkdownTableBorder "-\+" contained containedin=githubFlavoredMarkdownTableAlignBorder display
    syn match githubFlavoredMarkdownTableDelimiter "\\\@<!|" contained containedin=githubFlavoredMarkdownTable display
endif

" Check box
"
" - [x] Checked
" - [ ] Not checked
if g:gfm_syntax_highlight_checkbox
    syn match githubFlavoredMarkdownCheckBox "\%(\_^\s*\%(-\|\*\|+\|\d\+\.\)\s\+\)\@<=\[[ x]]" contains=githubFlavoredMarkdownCheckBoxBracket,githubFlavoredMarkdownCheckBoxX
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

let b:gfm_syntax_enabled = 1
