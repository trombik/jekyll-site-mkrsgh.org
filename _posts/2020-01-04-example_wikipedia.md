---
lang: en
layout: post
title: Wikipedia Liquid tag example
tags:
    - wikipedia
    - example
---

A custom `wikipedia` liquid tag is available. In your post:

```
{% raw -%}
{% wikipedia Blog %} was popular 10 years ago.
{% endraw -%}
```

Becomes:

{% wikipedia Blog %} was popular 10 years ago.

Note that you should l10n keywords. Some keywords on `en` also works on `ja`,
but not always.

The keyword may have spaces. For example:

```
{% raw -%}
{% wikipedia International System of Units %}
{% endraw -%}
```

Becomes:

{% wikipedia International System of Units %}
