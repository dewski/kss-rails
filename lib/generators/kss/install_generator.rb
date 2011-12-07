require 'rails/generators/base'

module Kss
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../../templates', __FILE__)
    desc "KSS Rails Install"

    def install_steps
      copy_file 'index.html.erb', 'app/views/kss/home/index.html.erb'
      copy_file 'styleguide.html.erb', 'app/views/kss/home/styleguide.html.erb'
      copy_file 'application.html.erb', 'app/views/layouts/kss/application.html.erb'
      route "mount Kss::Engine => '/kss' if Rails.env.development?"
    end
  end
end
