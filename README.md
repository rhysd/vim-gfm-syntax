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

And it also supports concealing emoji characters.


## Screenshot

| Before | After |
|--------|-------|
|![before][]|![after][]|


## Usage

By default, this plugin is enabled for all `markdown` filetype files.

If you want to enable these extra syntax highlights in specific file, you can use `g:gfm_syntax_enable_filetypes` and sub filetypes.

Example: Only README.md enables extra highlight.

```vim
let g:gfm_syntax_enable_always = 0
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

Note: Standard markdown syntax highlight offers `markdownCode` to highlight `inline codes`, but they also highlight code blocks.  `githubFlavoredMarkdownCode` only highlights inline codes.

## Emoji Concealing

![screenshot](https://github.com/rhysd/ss/blob/master/vim-gfm-syntax/emoji-conceal.gif?raw=true)

This plugin also supports concealing emojis using Vim's 'conceal' feature. When `g:gfm_syntax_emoji_conceal` is set to `1`, emojis such as `:dog:` in will be displayed as real emoji like :dog:. Original text (`:dog:`) remains as is. Concealing happens only in non-current lines.

## What is the Difference from [vim-flavored-markdown](https://github.com/jtratner/vim-flavored-markdown)?

[vim-flavored-markdown](https://github.com/jtratner/vim-flavored-markdown) was created for the same purpose as this plugin, and it works well.
But it does not match to my usecase in terms of below points.

- vim-flavored-markdown introduces new filetype `ghmarkdown`.
  This is useful if you want to distinguish Markdown and GFM.
  Otherwise, it kills original `markdown` filetype.
  It means that many other plugins for `markdown` filetype are killed as well.
- Because vim-flavored-markdown is a fork of old version of [vim-markdown](https://github.com/tpope/vim-markdown), it lacks some improvements (e.g. code block highlight).
- vim-gfm-syntax supports more GFM syntax (e.g. checkbox), well-tested (with [themis.vim](https://github.com/thinca/vim-themis)), customizable (you can choose which syntax should be highlighted).


## License

This plugin is distributed under [the MIT License](LICENSE).

[before]: https://raw.githubusercontent.com/rhysd/ss/master/vim-gfm-syntax/before.png
[after]: https://raw.githubusercontent.com/rhysd/ss/master/vim-gfm-syntax/after.png
