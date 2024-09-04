module Stave
  module Core
    class ScaleHarmoniser
      attr_reader :scale_type, :chord_set

      def initialize(scale_type:, chord_set:)
        @scale_type = scale_type
        @chord_set = chord_set
      end

      def harmonise!
        scale_type.uniq.map do |degree|
          Theory::ChordType.find_by(intervals: intervals(degree))
        end
      end

      private

      def scale_intervals(degree)
        scale_type.rotate(degree.position)
                  .each_slice(chord_set.slice_size)
                  .map(&:first)
                  .map(&:interval)
                  .take(chord_set.note_count)
      end

      def intervals(degree)
        intervals = scale_intervals(degree)

        intervals.map { |interval| interval - intervals.first }
      end
    end
  end
end
