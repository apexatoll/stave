module Stave
  module Theory
    class Chord < Core::NoteCollection
      def to_s
        "#{root}#{type}"
      end
    end
  end
end
