module Stave
  module Theory
    class ChordInversion < Chord
      def symbol
        "#{root_chord.symbol}#{type.symbol}"
      end

      def root_chord
        root = notes[type.root_position]

        Chord.new(root:, type: type.chord_type)
      end
    end
  end
end
