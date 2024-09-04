module Stave
  module Theory
    class Scale < Core::NoteCollection
      def triads
        harmonise!(type.triad_types)
      end

      def sevenths
        harmonise!(type.seventh_types)
      end

      private

      def harmonise!(chord_types)
        chord_types.zip(notes).map do |chord_type, note|
          Chord.new(type: chord_type, root: note)
        end
      end
    end
  end
end
