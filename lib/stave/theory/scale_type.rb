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

      variant :minor, degrees: [
        Degree.root,
        Degree.two,
        Degree.flat_three,
        Degree.four,
        Degree.five,
        Degree.flat_six,
        Degree.flat_seven,
        Degree.octave
      ]

      with_options suffix: :pentatonic do
        variant :major, degrees: [
          Degree.root,
          Degree.two,
          Degree.three,
          Degree.five,
          Degree.six,
          Degree.octave
        ]

        variant :minor, degrees: [
          Degree.root,
          Degree.flat_three,
          Degree.four,
          Degree.five,
          Degree.flat_seven,
          Degree.octave
        ]
      end

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

      def mode_types
        ModeType.where(scale_type: self).sort_by(&:position)
      end

      def mode_type_at(position)
        position -= 7 while position >= 8

        mode_types[position - 1]
      end
    end
  end
end
