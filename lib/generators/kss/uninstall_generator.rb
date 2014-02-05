require 'rails/generators/base'

module Kss
  class UninstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../../templates', __FILE__)
    desc 'KSS Rails uninstall'

    def uninstall
      remove_file 'app/views/kss/home/index.html.erb'
      remove_file 'app/views/kss/home/styleguide.html.erb'
      remove_file 'app/views/layouts/kss/application.html.erb'
      gsub_file "config/routes.rb", /mount Kss::Engine => \'\/kss\' if Rails.env.development\?/, ''
    end
  end
end
