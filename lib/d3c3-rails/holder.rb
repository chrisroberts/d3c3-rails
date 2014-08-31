require 'd3c3-rails'

module D3C3Rails
  # Content container
  class Holder

    include D3C3Rails::Generators

    # @return [Context] current context
    attr_accessor :context

    # Create new instance
    #
    # @param args [Hash]
    # @option args [Context] :context
    def initialize(args={})
      @context = args[:context]
      @buffer = ''
    end

    # Add string to buffer
    #
    # @param string [String]
    # @return [self]
    def << (string)
      @buffer << string.to_s
      self
    end

    # Clear current buffer and return content
    #
    # @return [String]
    def grapher_flush
      buf = @buffer.dup
      @buffer = ''
      buf
    end

  end
end
