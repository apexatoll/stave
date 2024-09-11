module Stave
  module Theory
    class Chord < Core::NoteCollection
      def to_s
        "#{root.symbol}#{type}"
      end
    end
  end
end
