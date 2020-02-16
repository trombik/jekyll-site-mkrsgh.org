---
lang: ja
layout: post
title: シンタックスハイライトの例
tags:
- example

---

YAMLの例。

```yaml
foo:
  bar: buz
```

Rubyの例。

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
