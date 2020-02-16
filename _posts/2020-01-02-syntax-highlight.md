---
lang: en
layout: post
title: Syntax highlight example
description: This post explains how to use syntax highlight in posts.
tags:
- example

---
You can use syntax highlight in posts by placing ``` (three backticks) before
and after the text to highlight with the language name.

YAML example:

````
```yaml
foo:
  bar: buz
```
````
Becomes:

```yaml
foo:
  bar: buz
```

Ruby example:

```ruby
class YoutubeTag < Liquid::Tag
  def initialize(tag_name, arg, tokens)
    super # mandatory
    # fill in some awesome codez
  end

  def render(context)
    <<-MARKUP.strip
    # more awesome codez
    MARKUP
  end
end
```

The CSS is `css/fruity.css`, which is part of
[`pygments-css`](https://github.com/richleland/pygments-css).
