require 'rails/railtie'
require 'gauges/rails/helper'

module Gauges
  module Rails
    class Railtie < ::Rails::Railtie

      config.gauges = ActiveSupport::OrderedOptions.new
      config.gauges.site_id = nil

      initializer :setup_gauges_rails do |app|
        ActiveSupport.on_load(:action_view) do
          include Gauges::Rails::Helper
        end
      end

    end
  end
end
