module Kss
  class ApplicationController < ::ApplicationController
    private
    
    def styleguide
      @styleguide ||= Kss::Parser.new(File.expand_path('app/assets/stylesheets', Rails.root))
    end
    helper_method :styleguide
  end
end