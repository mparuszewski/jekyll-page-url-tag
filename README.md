# Page Url tag for Jekyll

If you have problems with your routes or you want to force Jekyll to manage your links PageUrl tag is for you.

## Installation

In your Jekyll site source root directory, create or open a `_plugins` directory. Paste `page_url_tag.rb` there.

## Usage

If you have file with name `Super-Page.md` or `super-page.html` to create working link just add:

```ruby
{% page_url 'super-page' %}
```
