module Stave
  module Theory
    class Scale < Core::NoteCollection
      def triads
        type.triad_types.zip(notes).map do |chord_type, note|
          Chord.new(type: chord_type, root: note)
        end
      end
    end
  end
end
