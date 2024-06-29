module Stave
  module Core
    class Lookup
      attr_reader :name

      def initialize(name)
        @name = name

        validate_variant!
      end

      def method_missing(method, *, **)
        variant.attributes[method]
      end

      def respond_to_missing?(attribute, include_private)
        variant.attributes.key?(attribute) || super
      end

      def self.variant(name, **attributes)
        @variants ||= []

        variants << Variant.new(name:, **attributes)

        self.class.define_method(name) { new(name) }
      end

      def self.variant?(name)
        variants.map(&:name).include?(name)
      end

      class << self
        attr_reader :variants
      end

      private

      class Variant
        attr_reader :name, :attributes

        def initialize(name:, **attributes)
          @name = name
          @attributes = attributes
        end
      end

      class InvalidVariantError < StandardError
        def initialize(name)
          super("Invalid lookup variant: #{name}")
        end
      end

      def variant
        @variant ||= self.class.variants.find do |variant|
          variant.name == name
        end || raise
      end

      def validate_variant!
        return if self.class.variant?(name)

        raise InvalidVariantError, name
      end
    end
  end
end
