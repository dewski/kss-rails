module Kss
  module ApplicationHelper
    def styleguide_block(section, &block)
      raise ArgumentError, "Missing block" unless block_given?

      @section = styleguide.section(section)

      if !@section.raw
        raise "KSS styleguide section is nil, is section '#{section}' defined in your css?"
      end

      content = capture(&block)
      render 'kss/shared/styleguide_block', :section => @section, :example_html => content
    end

    def render_styleguide_section(section_name)
      partial_name = section_name.split(' ')[1..-1].join('_').downcase
      render "kss/sections/#{partial_name}"
    end

    def styleguide_sections
      styleguide.sections.keys
    end
  end
end
