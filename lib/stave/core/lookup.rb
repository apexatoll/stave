module Stave
  module Core
    class Lookup
      attr_reader :name

      def initialize(name)
        @name = name

        validate_variant!
      end

      def variant
        @variant ||= self.class.variants.find do |variant|
          variant == name
        end || raise
      end

      def self.variant(name)
        @variants ||= []

        variants << name.to_sym

        self.class.define_method(name) { new(name) }
      end

      def self.variant?(name)
        variants.include?(name)
      end

      class << self
        attr_reader :variants
      end

      private

      class InvalidVariantError < StandardError
        def initialize(name)
          super("Invalid lookup variant: #{name}")
        end
      end

      def validate_variant!
        return if self.class.variant?(name)

        raise InvalidVariantError, name
      end
    end
  end
end
