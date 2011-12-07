require 'kss'

module Kss
  class Engine < Rails::Engine
    # Isolate
    isolate_namespace Kss
    
    # Used as default namespace for routes
    engine_name :kss
  end
end
