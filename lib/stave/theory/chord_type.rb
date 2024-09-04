module Stave
  module Theory
    class ChordType < Core::DegreeCollection
      class Set < Core::Lookup
        with_options slice_size: 2 do
          variant :triad, note_count: 3
          variant :seventh, note_count: 4
        end
      end

      with_options set: Set.triad do
        variant :major_triad, to_s: "", degrees: [
          Degree.root,
          Degree.three,
          Degree.five
        ]

        variant :minor_triad, to_s: "m", degrees: [
          Degree.root,
          Degree.flat_three,
          Degree.five
        ]

        variant :diminished_triad, to_s: "o", degrees: [
          Degree.root,
          Degree.flat_three,
          Degree.flat_five
        ]
      end

      with_options set: Set.seventh do
        variant :major_seventh, to_s: "∆7", degrees: [
          Degree.root,
          Degree.three,
          Degree.five,
          Degree.seven
        ]

        variant :dominant_seventh, to_s: "7", degrees: [
          Degree.root,
          Degree.three,
          Degree.five,
          Degree.flat_seven
        ]

        variant :minor_seventh, to_s: "m7", degrees: [
          Degree.root,
          Degree.flat_three,
          Degree.five,
          Degree.flat_seven
        ]

        variant :half_diminished_seventh, to_s: "ø7", degrees: [
          Degree.root,
          Degree.flat_three,
          Degree.flat_five,
          Degree.flat_seven
        ]
      end

      def note_count
        set.note_count
      end
    end
  end
end
