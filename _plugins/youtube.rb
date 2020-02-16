# Usage:
#
# {% youtube https://www.youtube.com/embed/zpOULjyy-n8?rel=0 %}
#
module Jekyll
  class YouTube < Liquid::Tag
    def initialize(tag_name, url, tokens)
      super
      @url = url
    end

    def render(context)
      content = '<div class="embed-responsive embed-responsive-16by9">'
      content += "<iframe class=\"embed-responsive-item\" src=\"#{@url}\" allowfullscreen></iframe>"
      content += '</div>'
      content
    end
  end
end

Liquid::Template.register_tag('youtube', Jekyll::YouTube)
