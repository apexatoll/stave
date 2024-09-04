module Stave
  module Theory
    class ScaleType < Core::DegreeCollection
      variant :major, degrees: [
        Degree.root,
        Degree.two,
        Degree.three,
        Degree.four,
        Degree.five,
        Degree.six,
        Degree.seven,
        Degree.octave
      ]

      def triad_types
        Core::ScaleHarmoniser
          .new(scale_type: self, chord_set: ChordType::Set.triad)
          .harmonise!
      end

      def seventh_types
        Core::ScaleHarmoniser
          .new(scale_type: self, chord_set: ChordType::Set.seventh)
          .harmonise!
      end
    end
  end
end
