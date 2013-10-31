require 'ostruct'

module Kss
  module ApplicationHelper
    # Generates a styleguide block. A little bit evil with @_out_buf, but
    # if you're using something like Rails, you can write a much cleaner helper
    # very easily.
    def styleguide_block(section, &block)
      raise ArgumentError, "Missing block" unless block_given?
      
      @section = styleguide.section(section)

      if !@section.raw
        raise "KSS styleguide section is nil, is section '#{section}' defined in your css?"
      end

      content = capture(&block)
      render 'kss/shared/styleguide_block', :section => @section, :example_html => content
    end

    def styleguide_entry(section)
      @section = styleguide.section(section)
      @section = missing_entry(section) unless @section.raw

      render 'kss/shared/styleguide_entry', :section => @section
    end

    private
    def missing_entry(section)
      OpenStruct.new({
        :section => section,
        :filename => nil,
        :description => "Section \"#{section}\" has not yet been created. Please add documentation for this section in your styles."
      })
    end
  end
end
