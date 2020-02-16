# Usage:
#
# <p>{% render_time page rendered at: %}</p>
#
# <p>page rendered at: Tue June 22 23:38:47 –0500 2010</p>
#
module Jekyll
  class RenderTimeTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      "#{@text} #{Time.now}"
    end
  end
end

Liquid::Template.register_tag('render_time', Jekyll::RenderTimeTag)
