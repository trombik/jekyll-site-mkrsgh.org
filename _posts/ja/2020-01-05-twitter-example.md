---
lang: ja
layout: post
title: ツイッターの例
tags:
    - example
    - twitter

---

ポストにはツイートを埋め込むことができます。次の例では、ユーザ`@twitter`の最新5ツイートを表示します。

```
{% raw -%}
{% twitter https://twitter.com/twitter limit=5 %}
{% endraw -%}
```

Becomes:

{% twitter https://twitter.com/twitter limit=5 %}

次の例では、`maxwidth=500`をパラメータにし、1つのツイートを表示します。

```
{% raw -%}
{% twitter https://twitter.com/Twitter/status/1222972807639896064 maxwidth=500 %}
{% endraw -%}
```

{% twitter https://twitter.com/Twitter/status/1222972807639896064 maxwidth=500 %}
