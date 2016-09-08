GitHub Flavored Markdown Syntax Extension for Vim
=================================================
[![Build Status](https://travis-ci.org/rhysd/vim-gfm-syntax.svg?branch=master)](https://travis-ci.org/rhysd/vim-gfm-syntax)

This Vim plugin provides extra syntax highlight for [GitHub Flavored Markdown](https://help.github.com/categories/writing-on-github/). GitHub adds their extra features to Markdown.  This plugin fills the gap between normal Markdown and GitHub Flavored Markdown.

Supports for below syntax are added:

| Name         | Example |
|:------------:|:-------:|
| Inline code  | `code`  |
| Mentions     | @rhysd  |
| Issue number | #123    |
| Emoji        | :dog:   |
| Check box    | `- [x]` |
| Table        | This!   |


## Screenshot

| Before | After |
|--------|-------|
|![before](https://raw.githubusercontent.com/rhysd/ss/master/vim-gfm-syntax/before.png)|![after](https://raw.githubusercontent.com/rhysd/ss/master/vim-gfm-syntax/after.png)|


## Usage

By default, this plugin is enabled for all `markdown` filetype files.

If you want to enable these extra syntax highlights in specific file, you can use `g:gfm_syntax_enable_filetypes` and sub filetypes.

Example: Only README.md enables extra highlight.

```vim
let g:gfm_syntax_enable = 0
let g:gfm_syntax_enable_filetypes = ['markdown.gfm']
autocmd BufRead,BufNew,BufNewFile README.md setlocal ft=markdown.gfm
```

If you want to highlight inner code block, standard syntax highlight support for Markdown already supports it.

```vim
let g:markdown_fenced_languages = ['cpp', 'ruby', 'json']
```

In above Example, C++, Ruby and JSON code blocks will be highlighted with their syntax highlight.  Please note that enabling so many filetypes for code block may cause performance issue on highlighting.

If you want to support specific feature of GFM, you can control them to be highlighted by some variables.

| Variable                               | Description                                 |
|----------------------------------------|---------------------------------------------|
| `g:gfm_syntax_highlight_inline_code`   | If `0`, inline codes won't be highlighted.  |
| `g:gfm_syntax_highlight_mention`       | If `0`, mentions won't be highlighted.      |
| `g:gfm_syntax_highlight_strikethrough` | If `0`, strikethrough won't be highlighted. |
| `g:gfm_syntax_highlight_emoji`         | If `0`, emojis won't be highlighted.        |
| `g:gfm_syntax_highlight_table`         | If `0`, tables won't be highlighted.        |
| `g:gfm_syntax_highlight_issue_number`  | If `0`, issue number won't be highlighted   |
| `g:gfm_syntax_highlight_checkbox`      | If `0`, check box won't be highlighted      |

If you want to use your favorite colors for syntax highlights, you can override highlight definitions.  Below configration is an example where inline code will be highlighted with `CursorLine` highlight.

```vim
autocmd ColorScheme * highlight link githubFlavoredMarkdownCode CursorLine
```

`githubFlavoredMarkdownCode` is a highlight rule for inline code.  For other rules, please see [after/syntax/markdown/gfm.vim](after/syntax/markdown/gfm.vim).  There are so many colorschemes for Vim.  One syntax file can't consider all of them.  If you feel some highlighting is not good, please customize by yourself.

## License

This plugin is distributed under the MIT License.

    Copyright (c) 2016 rhysd

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
    of the Software, and to permit persons to whom the Software is furnished to do so,
    subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
    INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
    PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
    LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
    TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR
    THE USE OR OTHER DEALINGS IN THE SOFTWARE.
