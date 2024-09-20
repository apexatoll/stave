module Stave
  module Theory
    class Chord < Core::NoteCollection
      def symbol
        "#{root.symbol}#{type.symbol}"
      end

      def inversions
        notes.drop(1).zip(type.inversion_types).map do |root, type|
          ChordInversion.new(root:, type:)
        end
      end
    end
  end
end
