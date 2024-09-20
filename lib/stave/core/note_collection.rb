module Stave
  module Core
    class NoteCollection
      attr_reader :root, :type

      def initialize(root:, type:)
        @root = root
        @type = type
      end

      def notes
        type.intervals.map { |interval| root + interval }
      end

      def note_at(position)
        return if position.zero? || position.negative?

        position -= 7 while position >= 8

        notes[position - 1]
      end

      def uniq
        notes.uniq(&:variant)
      end

      def to_h
        {
          self.class.type_class.class_key => { variant: type.variant },
          root: root.variant
        }
      end

      def self.type_class
        const_get("#{self}Type")
      end

      def self.inherited(note_class)
        note_class.type_class.variants.each do |type|
          self.class.define_method(
            :"#{type.variant}_from", ->(root) { new(type:, root:) }
          )
        end
      end
    end
  end
end
