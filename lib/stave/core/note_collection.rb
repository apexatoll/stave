module Stave
  module Core
    class NoteCollection
      extend Forwardable

      def_delegators :type, :degrees

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

      def note_degree(note)
        return unless notes.include?(note)

        position = notes.index(note)

        degrees[position]
      end

      def degree_note(degree)
        return unless degrees.include?(degree)

        position = degrees.index(degree)

        notes[position]
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
