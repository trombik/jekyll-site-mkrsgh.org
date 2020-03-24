---
lang: en
layout: post
title: An example post
description: |
    This post demonstrates common patterns in blog posts.
    `description` in front matter is always placed at the top, followed by
    `image`.
tags:
    - wikipedia
    - example
image: img/resized.jpg
image_figcaption: Image for example post
image_alt: Image for example post

---

In this post, you will learn quickly how to write posts. This is the first
paragraph in the post.

The source of this post is available at
[trombik/jekyll-prod/_posts/2020-01-01-example_post.md](https://raw.githubusercontent.com/trombik/jekyll-prod/devel/_posts/2020-01-01-example_post.md).

## Posts

It is assumed that your posts are in markdown format, whose file name must
end with `.md`. You may opt to raw HTML format (`.html`).

Create a file under `_posts`. The file name must be `YYYY-MM-DD-slug.md`. The
`slug` is used to create a meaningful permanent URL to the post. For example,
the file name of this post is `_posts/2020-01-01-example_post.md`, and its URL
is `blog/2020/01/01/example_post/`.

The file should start with `---`.  A post consists of two parts: front matter,
and the content, separated by `---` (three dashes).

Front matter is a meta data of the post, in YAML format and must end with
`---`.

Then, the content follows.

```yaml
---
lang: en (mandatory)
layout: post (mandatory)
title: The title (optional, but strongly advised to use it)
description: A description of the post (optional, but strongly advised to use it)
image: (URL to a image that represents the post, optional, byt strongly advised to use it)
image_figcaption: A caption of the image (optional)
image_alt: (optional)
---

The content.
```

The `description` and the first paragraph are shown in the archive page.

Here is a list of links to markdown resources:

* [Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) for a quick reference
* [Markdown: Basics](https://daringfireball.net/projects/markdown/basics) by the author

## Headings

Headings start with `#`. The number of `#` corresponds to the heading number,
such as `##` for `<h2>`, and `###` for `<h3>`. `<h1>` is used for the title of
posts, and should be avoided in posts.

```markdown
## h2

### h3

#### h4

##### h5
```

## h2

### h3

#### h4

##### h5

## Paragraphs

Simply use an empty line to create a paragraph.

```markdown
A paragraph

Another paragraph

A line break does
not create a paragraph.
```

A paragraph

Another paragraph

A line break does
not create a paragraph.

## Links

URLs in posts are linked to the URLs by using `[text](URL)`.

```markdown
[Example link](http://example.org/)
```

[Example link](http://example.org/)

## Images

{% include components/image.html
    image = "img/puf150X129.gif"
    alt = "puffy"
    figcaption = "The beloved puffy"
    float = "left"
%}

You can insert images into your post. You may use markdown `![alt
text](http://example.org/img.jpg)` to display an image, or use a component
provided for granular controls. `float`, `figcaption`, and `alt` are optional.
For general information about `include` in `jekyll`, see
[Includes](https://jekyllrb.com/docs/includes/).

The example below displays an image at the left of the paragraph.

```liquid
{% raw -%}
{% include components/image.html
    image = "img/puf150X129.gif"
    alt = "puffy"
    figcaption = "The beloved puffy"
    float = "left"
%}
{% endraw -%}
```

## Lists

You can create an ordered list with `1.` The number does not matter.

```markdown
1. Item 1
1. Item 2
1. Item 3
10. item 4
```

1. Item 1
1. Item 2
1. Item 3
10. item 4

For unordered lists, use `*`

```markdown
* item
* item
* item
```

* item
* item
* item

## Alerts

An alert is a nice way to draw reader's attentions. With `_include/components/alert.html`, you
can create an alert.

```liquid
{% raw -%}
{% include components/alert.html
    title = "Notice:"
    text = "You can place a notice like this."
%}
{% endraw -%}
```

{% include components/alert.html
    title = "Notice:"
    text = "You can place a notice like this."
%}

```liquid
{% raw -%}
{% include components/alert.html
    title = "Warning:"
    text = "A warning."
    class = "warning"
%}
{% endraw -%}
```

{% include components/alert.html
    title = "Warning:"
    text = "A warning."
    class = "warning"
%}

```liquid
{% raw -%}
{% include components/alert.html
    title = "Danger:"
    text = "Don't do this."
    class = "danger"
%}
{% endraw -%}
```

{% include components/alert.html
    title = "Danger:"
    text = "Don't do this."
    class = "danger"
%}

```liquid
{% raw -%}
{% include components/alert.html
    heading = "Easy!"
    text = "You can add a heading to the alert."
%}
{% endraw -%}
```

{% include components/alert.html
    heading = "Easy!"
    text = "You can add a heading to the alert."
%}

## Quotes

You may use a component for quoting.

```liquid
{% raw -%}
When Animal Mother met Joker, he said:

{% include components/quote.html
    content = "You talk the talk. Do you walk the walk?"
    author = "Animal Mother"
%}
{% endraw -%}
```

When Animal Mother met Joker, he said:

{% include components/quote.html
    content = "You talk the talk. Do you walk the walk?"
    author = "Animal Mother"
%}
คุณโทมี่บอกว่าเขียนอะไรก็ได้ เขียนแล้วค่ะ
