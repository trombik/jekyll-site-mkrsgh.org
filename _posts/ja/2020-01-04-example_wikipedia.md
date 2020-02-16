---
lang: ja
layout: post
title: Wikipediaの例
tags:
    - wikipedia
    - example
---

タグ`wikipedia`が使えます。次の例をポストに追加すると

```
{% raw -%}
{% wikipedia ブログ %}は10年前に人気があった。
{% endraw -%}
```

次のように変換されます。


{% wikipedia ブログ %}は10年前に人気があった。

キーワードはローカライズする必要があります。キーワードによっては日本語版でも英語版でも正しくリンクされますが、すべてのキーワードで動作するわけではありません。英語版Wikipediaには"International System of Units"というページが存在しますが、日本語版にはありません。

```
{% raw -%}
{% wikipedia International System of Units %}
{% endraw -%}
```

"International System of Units"は日本語版では"国際単位系"ですから、次のようにローカライズします。

```
{% raw -%}
{% wikipedia 国際単位系 %}
{% endraw -%}
```

{% wikipedia 国際単位系 %}
