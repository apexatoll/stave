module Stave
  module Core
    class ScaleHarmoniser
      attr_reader :scale_type, :chord_set

      def initialize(scale_type:, chord_set:)
        @scale_type = scale_type
        @chord_set = chord_set
      end
    end
  end
end
