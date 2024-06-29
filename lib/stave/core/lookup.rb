module Stave
  module Core
    class Lookup
      attr_reader :variant

      def initialize(variant)
        @variant = variant

        validate_variant!
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
        def initialize(variant)
          super("Invalid lookup variant: #{variant}")
        end
      end

      def validate_variant!
        return if self.class.variant?(variant)

        raise InvalidVariantError, variant
      end
    end
  end
end
