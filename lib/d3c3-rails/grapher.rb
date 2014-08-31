require 'd3c3-rails'

module D3C3Rails
  # Loads graphing helper methods into class
  module Grapher

    def self.included(base)
      D3C3Rails::Generators.instance_methods(false).each do |method|
        base.class_eval do

          def _grapher_holder
            @_grapher_holder ||= D3C3Rails::Holder.new
          end

          define_method method do |*args|
            _grapher_holder.context = self
            _grapher_holder.send(method, *args)
            _grapher_holder.grapher_flush.html_safe
          end

        end
      end

    end
  end
end

ActionView::Base.send(:include, D3C3Rails::Grapher)
