module Stave
  module Theory
    class ChordType < Core::DegreeCollection
      class Set < Core::Lookup
        with_options slice_size: 2 do
          variant :triad, note_count: 3
          variant :seventh, note_count: 4
        end
      end

      with_options set: Set.triad, scope: :triads do
        variant :major_triad, symbol: "", degrees: [
          Degree.root,
          Degree.three,
          Degree.five
        ]

        variant :minor_triad, symbol: "m", degrees: [
          Degree.root,
          Degree.flat_three,
          Degree.five
        ]

        variant :diminished_triad, symbol: "o", degrees: [
          Degree.root,
          Degree.flat_three,
          Degree.flat_five
        ]
      end

      with_options set: Set.seventh, scope: :sevenths do
        variant :major_seventh, symbol: "∆7", degrees: [
          Degree.root,
          Degree.three,
          Degree.five,
          Degree.seven
        ]

        variant :dominant_seventh, symbol: "7", degrees: [
          Degree.root,
          Degree.three,
          Degree.five,
          Degree.flat_seven
        ]

        variant :minor_seventh, symbol: "m7", degrees: [
          Degree.root,
          Degree.flat_three,
          Degree.five,
          Degree.flat_seven
        ]

        variant :half_diminished_seventh, symbol: "ø7", degrees: [
          Degree.root,
          Degree.flat_three,
          Degree.flat_five,
          Degree.flat_seven
        ]
      end

      def note_count
        set.note_count
      end

      def inversion_types
        ChordInversionType.where(chord_type: self)
      end
    end
  end
end
