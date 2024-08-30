module Stave
  module Core
    class OptionMerger
      attr_reader :context, :options

      def initialize(context, options)
        @context = context
        @options = options
      end

      private

      def method_missing(method, *args, **kwargs, &)
        kwargs ||= {}
        kwargs = kwargs.merge(options) unless options.empty?

        context.send(method, *args, **kwargs, &)
      end

      def respond_to_missing?(...)
        context.respond_to?(...)
      end
    end
  end
end
