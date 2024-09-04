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
        notes.uniq(&:to_i)
      end
    end
  end
end
