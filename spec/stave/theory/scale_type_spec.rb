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
        ],
        mode_types: [
          Stave::Theory::ModeType.ionian,
          Stave::Theory::ModeType.dorian,
          Stave::Theory::ModeType.phrygian,
          Stave::Theory::ModeType.lydian,
          Stave::Theory::ModeType.mixolydian,
          Stave::Theory::ModeType.aeolian,
          Stave::Theory::ModeType.locrian
        ]
      )
    end
  end

  describe ":minor" do
    subject(:scale_type) { described_class.minor }

    it "sets the expected attributes" do
      expect(scale_type).to have_attributes(
        count: 7,
        intervals: [
          Stave::Theory::Interval.perfect_unison,
          Stave::Theory::Interval.major_second,
          Stave::Theory::Interval.minor_third,
          Stave::Theory::Interval.perfect_fourth,
          Stave::Theory::Interval.perfect_fifth,
          Stave::Theory::Interval.minor_sixth,
          Stave::Theory::Interval.minor_seventh,
          Stave::Theory::Interval.perfect_octave
        ],
        steps: [
          Stave::Theory::Interval.major_second,
          Stave::Theory::Interval.minor_second,
          Stave::Theory::Interval.major_second,
          Stave::Theory::Interval.major_second,
          Stave::Theory::Interval.minor_second,
          Stave::Theory::Interval.major_second,
          Stave::Theory::Interval.major_second
        ],
        mode_types: []
      )
    end
  end
end
