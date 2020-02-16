---
lang: en
layout: post
title: Twitter example
tags:
    - example
    - twitter

---

Tweets can be embedded into posts. This example shows the latest five tweets
from user `@twitter`.

```
{% raw -%}
{% twitter https://twitter.com/twitter limit=5 %}
{% endraw -%}
```

Becomes:

{% twitter https://twitter.com/twitter limit=5 %}

The next example shows a single tweet with `maxwidth=500` as a parameter.

```
{% raw -%}
{% twitter https://twitter.com/Twitter/status/1222972807639896064 maxwidth=500 %}
{% endraw -%}
```

{% twitter https://twitter.com/Twitter/status/1222972807639896064 maxwidth=500 %}
