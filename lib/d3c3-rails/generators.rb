require 'd3c3-rails'
require 'rails_javascript_helpers'

module D3C3Rails
  # Generator methods for dialogs
  module Generators

    include RailsJavaScriptHelpers
    include ActionView::Helpers::JavaScriptHelper
    include ActionView::Helpers::TagHelper

    # Create a new graph
    #
    # @param name [String] name of graph (maps to DOM ID)
    # @param options [Hash] graph options
    # @return [TrueClass]
    def graph_generate(name, options={})
      options[:bindto] = "##{name}"
      self << "d3c3_rails.actions.generate('#{name}', #{format_type_to_js(options)});"
      true
    end

    # Load data into graph
    #
    # @param name [String] name of graph
    # @param options [Hash] load options
    # @return [TrueClass]
    def graph_load(name, options={})
      graph_perform(:load, name, options)
    end

    # Unload data from graph
    #
    # @param name [String] name of graph
    # @param options [Hash] unload options
    # @return [TrueClass]
    def graph_unload(name, options={})
      graph_perform(:unload, name, options)
    end

    # Show columns in graph
    #
    # @param name [String] name of graph
    # @param column_names [Array<String>] columns to show
    # @return [TrueClass]
    def graph_show(name, column_names=[])
      graph_perform(:show, name, column_names)
    end

    # Hide columns in graph
    #
    # @param name [String] name of graph
    # @param column_names [Array<String>] columns to hide
    # @return [TrueClass]
    def graph_hide(name, column_names=[])
      graph_perform(:hide, name, column_names)
    end

    # Perform action on graph
    #
    # @param action [String] graph API method
    # @param name [String] name of graph
    # @param options [Object] API method parameters
    # @return [TrueClass]
    def graph_perform(action, name, options={})
      self << "d3c3_rails.actions.get('#{name}').#{action}(#{format_type_to_js(options)});"
      true
    end

  end
end
