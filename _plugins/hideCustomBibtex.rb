module Jekyll
  module HideCustomBibtex
    def hideCustomBibtex(input)
      keywords = @context.registers[:site].config['filtered_bibtex_keywords']

      keywords.each do |keyword|
        input = input.gsub(/^.*#{keyword}.*$\n/, '')
      end

      strip_author_markers(input)
    end

    private

    def strip_author_markers(input)
      input.gsub(/^(.*author\s*=\s*\{.*)$/i) do |line|
        line.gsub(/[\u2020\u00b6]/, '').gsub(/([[:alpha:]])[*&^](?=[,\s}])/, '\1')
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::HideCustomBibtex)
