module Stave
  module Theory
    class Chord < Core::NoteCollection
      def symbol
        "#{root.symbol}#{type.symbol}"
      end
    end
  end
end
