module Stave
  module Theory
    class ModeType < Core::DegreeCollection
      with_options scale_type: ScaleType.major do
        variant :ionian, position: 1
        variant :dorian, position: 2
        variant :phrygian, position: 3
        variant :lydian, position: 4
        variant :mixolydian, position: 5
        variant :aeolian, position: 6
        variant :locrian, position: 7
      end

      def degrees
        scale_type.relative_rotate(position)
      end
    end
  end
end
