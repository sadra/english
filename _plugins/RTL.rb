module Jekyll
  class RTL < Liquid::Tag
    def initialize(tag_name, input, tokens)
      super
    end

    def render(context)
      output =  "<div class='div-rtl' markdown='1'> \n"
      return output;
    end

  end
end

Liquid::Template.register_tag('rtl', Jekyll::RTL)
