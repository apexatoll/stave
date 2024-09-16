module Stave
  module Theory
    class ChordInversionType < Core::DegreeCollection
      ChordType.triads.each do |chord_type|
        with_options chord_type:, suffix: chord_type.variant do
          variant :first_inversion, inversion: 1
          variant :second_inversion, inversion: 2
        end
      end

      ChordType.sevenths.each do |chord_type|
        with_options chord_type:, suffix: chord_type.variant do
          variant :first_inversion, inversion: 1
          variant :second_inversion, inversion: 2
          variant :third_inversion, inversion: 3
        end
      end

      def position = inversion + 1

      def degrees
        chord_type.relative_rotate(position).uniq(&:variant)
      end

      def symbol
        "(#{'i' * inversion})"
      end
    end
  end
end
