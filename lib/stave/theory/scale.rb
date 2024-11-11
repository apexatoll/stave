module Stave
  module Theory
    class Scale < Core::NoteCollection
      def key_signature
        KeySignature.parse(self)
      end

      def triads
        return unless type.heptatonic?

        harmonise!(type.triad_types)
      end

      def sevenths
        return unless type.heptatonic?

        harmonise!(type.seventh_types)
      end

      def mode(position)
        return if type.mode_types.empty?

        Mode.new(
          type: type.mode_type_at(position),
          root: note_at(position)
        )
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
