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
  end
end
