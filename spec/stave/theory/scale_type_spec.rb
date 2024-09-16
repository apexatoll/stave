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
        ],
        hexatonic?: true,
        pentatonic?: false
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
        mode_types: [],
        hexatonic?: true,
        pentatonic?: false
      )
    end
  end

  describe ":major_pentatonic" do
    subject(:scale_type) { described_class.major_pentatonic }

    it "sets the expected attributes" do
      expect(scale_type).to have_attributes(
        count: 5,
        intervals: [
          Stave::Theory::Interval.perfect_unison,
          Stave::Theory::Interval.major_second,
          Stave::Theory::Interval.major_third,
          Stave::Theory::Interval.perfect_fifth,
          Stave::Theory::Interval.major_sixth,
          Stave::Theory::Interval.perfect_octave
        ],
        steps: [
          Stave::Theory::Interval.major_second,
          Stave::Theory::Interval.major_second,
          Stave::Theory::Interval.minor_third,
          Stave::Theory::Interval.major_second,
          Stave::Theory::Interval.minor_third
        ],
        mode_types: [],
        hexatonic?: false,
        pentatonic?: true
      )
    end
  end

  describe ":minor_pentatonic" do
    subject(:scale_type) { described_class.minor_pentatonic }

    it "sets the expected attributes" do
      expect(scale_type).to have_attributes(
        count: 5,
        intervals: [
          Stave::Theory::Interval.perfect_unison,
          Stave::Theory::Interval.minor_third,
          Stave::Theory::Interval.perfect_fourth,
          Stave::Theory::Interval.perfect_fifth,
          Stave::Theory::Interval.minor_seventh,
          Stave::Theory::Interval.perfect_octave
        ],
        steps: [
          Stave::Theory::Interval.minor_third,
          Stave::Theory::Interval.major_second,
          Stave::Theory::Interval.major_second,
          Stave::Theory::Interval.minor_third,
          Stave::Theory::Interval.major_second
        ],
        mode_types: [],
        hexatonic?: false,
        pentatonic?: true
      )
    end
  end
end
