# `jekyll` site template

A `jekyll` site that includes popular `jekyll` plug-ins, templates and CSS
from [Business Casual](http://startbootstrap.com/template-overviews/business-casual/) by
[Start Bootstrap](http://startbootstrap.com/), and Github action to deploy the
site to AWS S3. Designed for small businesses. MIT licensed.

## Features

* i18n support by [`jekyll-polyglot`](https://github.com/untra/polyglot)
* `Sitemap` support by [`jekyll-sitemap`](https://github.com/jekyll/jekyll-sitemap)
* [Twitter Card](https://developer.twitter.com/en/docs/tweets/optimize-with-cards/overview/abouts-cards) support ([validator](https://cards-dev.twitter.com/validator))
* Atom feed by [`jekyll-feed`](https://github.com/jekyll/jekyll-feed)
* Twitter support by [`jekyll-twitter-plugin`](https://github.com/rob-murray/jekyll-twitter-plugin)
* country flags in SVG by [flag-icon-css](https://github.com/lipis/flag-icon-css/)

## Demo

Live demo is available at [the staging site on S3](http://jekyll-aws.s3-website-ap-northeast-1.amazonaws.com/).

## Requirements

* `ImageMagick` 6.x (for `jekyll-responsive-image`)
* `ruby` and `bundler`

## Usage

```
bundle install --path=~/.vendor/bundle
bundle exec jekyll browsersync
```

## Directories

```
.
├── _data (data directory for l10n)
│   └── ja (localized data)
├── _includes (various templates, which can be included)
├── _layouts (layout files)
├── _plugins (jekyll ruby plug-ins)
├── _posts (posts directory for blog entries)
│   └── ja (localized posts)
├── css (CSS files)
│   └── flag-icon-css (flag icons)
├── img (generic image directory)
└── scss (SCSS files)
```

## Blog

### Default image for posts

`project.blog.default.image.path` is the path to the default image for posts. When
a post does not have `image` in its front matter, the default image is shown
at the top of the post.

Optionally, you may set `project.blog.default.image.unsplash_author` when the author
of the default image is an [`unsplash`](https://unsplash.com/) user. If not
empty, a link to the author's page is added below the image.

## `i18n`

[`polyglot`](https://github.com/untra/polyglot) is used to support i18n.

## How-to

### Using CC0 licensed images

* [Unsplash](https://unsplash.com/)

### Resizing images

Images for pages should be a ratio of 1.9:1, or 1200x630 pixels. The following
example converts any images to the size using `convert` command in
`ImageMagick`.

```
convert orig.jpg -resize '1200x630^' -gravity center -extent 1200x630 -quality 80 resized.jpg
```

### `l10n`

Create a new page, `News`, which is a page for `lang` `en`, and the default
for other language if no translated page is found. The page must have `lang`
and `permalink` in the front matter. The file name is `news.html`.

```yaml
---
layout: default
title: News
lang: en
permalink: news/
---
The content
```

Create a localized one for `lang` `ja`, `news.ja.html`.

```yaml
---
layout: default
title: News
lang: ja
permalink: news/
---
The localized content
```

If the page should be included in the navigation bar, add an item to `_data/navi_items.yml`.

```yaml
---
- name: Home
  href: /
- name: About
  href: /about/
- name: Products
  href: /products/
- name: Store
  href: /store/
- name: News
  href: /news/
```

## Plug-ins to consider

## Links

### `jekyll`

* [Setting up a Living Styleguide in Jekyll](https://www.sitepoint.com/setting-up-a-living-styleguide-in-jekyll/)
* [Custom Tags in Liquid](https://thoughtbot.com/blog/custom-tags-in-liquid)
* [18F/18f.gsa.gov](https://github.com/18F/18f.gsa.gov) (a production
  repository using jekyll)

### `S3`

* [How do I use CloudFront to serve a static website hosted on Amazon S3?](https://aws.amazon.com/premiumsupport/knowledge-center/cloudfront-serve-static-website/)
* [Serving custom headers from static sites on CloudFront/S3 with Lambda@Edge](https://medium.com/@tom.cook/edge-lambda-cloudfront-custom-headers-3d134a2c18a2)
