module Stave
  class ScaleType < Core::Lookup
    variant :major, steps: [
      Interval.tone,
      Interval.tone,
      Interval.semitone,
      Interval.tone,
      Interval.tone,
      Interval.tone,
      Interval.semitone
    ]

    variant :minor, steps: [
      Interval.tone,
      Interval.semitone,
      Interval.tone,
      Interval.tone,
      Interval.semitone,
      Interval.tone,
      Interval.tone
    ]

    def offsets
      @offsets ||= map_offsets!
    end

    private

    def map_offsets!
      steps.map(&:size).inject([0]) do |offsets, size|
        offsets + [offsets[-1] + size]
      end
    end
  end
end
