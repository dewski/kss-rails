module Kss
  class HomeController < ApplicationController
    helper_method :styleguide

    def styleguide
      @styleguide ||= Kss::Parser.new(File.expand_path('app/assets/stylesheets', Rails.root))
    end

    def index
      
    end
  end
end
