module D3C3Rails
  class Engine < ::Rails::Engine

    config.to_prepare do |config|
      require 'd3c3-rails/grapher'
    end

  end
end
