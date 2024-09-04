RSpec.describe Stave::Theory::ScaleType do
  describe ":major" do
    subject(:scale_type) { described_class.major }

    it "sets the expected attributes" do
      expect(scale_type).to have_attributes(
        count: 7,
        intervals: [
          Stave::Theory::Interval.perfect_unison,
          Stave::Theory::Interval.major_second,
          Stave::Theory::Interval.major_third,
          Stave::Theory::Interval.perfect_fourth,
          Stave::Theory::Interval.perfect_fifth,
          Stave::Theory::Interval.major_sixth,
          Stave::Theory::Interval.major_seventh,
          Stave::Theory::Interval.perfect_octave
        ],
        steps: [
          Stave::Theory::Interval.major_second,
          Stave::Theory::Interval.major_second,
          Stave::Theory::Interval.minor_second,
          Stave::Theory::Interval.major_second,
          Stave::Theory::Interval.major_second,
          Stave::Theory::Interval.major_second,
          Stave::Theory::Interval.minor_second
        ]
      )
    end
  end
end
