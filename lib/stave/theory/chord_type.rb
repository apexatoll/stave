module Stave
  module Theory
    class ChordType < Core::DegreeCollection
      class Set < Core::Lookup
        with_options slice_size: 2 do
          variant :triad, note_count: 3
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

      def note_count
        set.note_count
      end
    end
  end
end
