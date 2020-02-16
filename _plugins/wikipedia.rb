# Usage:
#
# <p>{% wikipedia blog %}</p>
#
module Jekyll
  class Wikipedia < Liquid::Tag
    def initialize(tag_name, keyword, tokens)
      super
      @raw_keyword = keyword.strip
      @keyword = keyword.strip.gsub(/\s+/, "_")
    end

    def render(context)
      lang = context.registers[:site].active_lang || "en"
      "#{@raw_keyword} (<a href=\"https://#{lang}.wikipedia.org/wiki/#{@keyword}\" target=\"_blank\">wikipedia</a>)"
    end
  end
end

Liquid::Template.register_tag('wikipedia', Jekyll::Wikipedia)
