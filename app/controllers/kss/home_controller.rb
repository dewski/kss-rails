module Kss
  class HomeController < Kss::ApplicationController
    def index
    end

    def section
      @section_name = params[:name]
    end
  end
end
