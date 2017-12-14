Highlight Test
==============


## Inline code

`inline code`

This is `embedded` in text.

\` is an edge case.


## Mentions

@test @foo @test/foo

This @ is not a mention

Email someone@foo.example.com is not highlighted


## Strikethrough

Following text ~~has been deleted~~

~~Multi line
deleted text
is also highlighed~~

This text is not deleted.


## Emoji

:dog: is not a :cat:

:+1: and :-1: are also emoji.

edge case are ::, :, :=:


## Checkbox

- [ ] This item is not checked.
- [x] This item is checked.
  - [x] Nested.
  - Not an item.

[x] is not highlighted.
Following - [x] is also not highlighted.
- [x not highlighted

* [x] asterisk

1. [x] even enumeration!

+ [x] + is also available for list bullet!


## Table

|  A  |  B  |
|:----|----:|
| Foo | :   |
| Bar | \|  |

  | A | B |
  |---|---|
  | D | C |

This | is :- not -: table |

| inner   | highlight | tests |
|---------|-----------|-------|
| `code`  | @mention  | ~~x~~ |
| :emoji: | #123      | *foo* |

## issue #5

a`foo`

