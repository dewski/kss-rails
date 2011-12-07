require 'rails/generators/base'

module Kss
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../../templates', __FILE__)
    desc "KSS Rails Install"

    def install_steps
      template 'index.html', 'app/views/kss/home/index.html.erb'
      template 'styleguide.html', 'app/views/kss/home/styleguide.html.erb'
      template 'application.html', 'app/views/layouts/kss/application.html.erb'
      route "mount Kss::Engine => '/kss' if Rails.env.development?"
    end
  end
end
