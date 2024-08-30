module Stave
  module Core
    class Lookup
      attr_reader :variant

      def initialize(variant)
        @variant = variant.to_sym

        validate_variant!
        set_attributes!
      end

      def ==(other)
        case other
        when String, Symbol then variant == other.to_sym
        when Lookup then variant == other.variant
        else false
        end
      end

      alias eql? ==

      class << self
        def keys = variant_lookup.keys

        def variant(name, **attributes)
          variant_lookup[name] = attributes

          self.class.define_method name, -> { new(name) }
        end

        def variant?(name)
          variant_lookup.keys.include?(name)
        end

        def variants
          variant_lookup.keys.map { |variant| new(variant) }
        end

        def variant_lookup
          @variant_lookup ||= {}
        end

        def where(**attributes)
          variants.select do |variant|
            attributes.all? do |attribute, value|
              variant.send(attribute) == value
            end
          end
        end

        def find_by(**attributes)
          where(**attributes).first
        end

        def with_options(**options, &)
          merger = OptionMerger.new(self, options)

          merger.instance_eval(&)
        end
      end

      class InvalidVariantError < StandardError
        def initialize(variant)
          super("Variant :#{variant} is invalid")
        end
      end

      private

      def validate_variant!
        return if self.class.variant?(variant)

        raise InvalidVariantError, variant
      end

      def set_attributes!
        self.class.variant_lookup[variant].each do |attribute, value|
          instance_variable_set(:"@#{attribute}", value)

          self.class.attr_reader(attribute)
        end
      end
    end
  end
end
