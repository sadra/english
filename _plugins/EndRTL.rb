module Jekyll
  class EndRTL < Liquid::Tag
    def render(context)
      "\n </div>"
    end
  end
end

Liquid::Template.register_tag('endrtl', Jekyll::EndRTL)