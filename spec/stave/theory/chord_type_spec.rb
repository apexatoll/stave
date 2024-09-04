RSpec.describe Stave::Theory::ChordType do
  describe ":triads" do
    describe ":major_triad" do
      subject(:chord_type) { described_class.major_triad }

      it "sets the expected attributes" do
        expect(chord_type).to have_attributes(
          to_s: "",
          note_count: 3,
          intervals: [
            Stave::Theory::Interval.perfect_unison,
            Stave::Theory::Interval.major_third,
            Stave::Theory::Interval.perfect_fifth
          ],
          steps: [
            Stave::Theory::Interval.major_third,
            Stave::Theory::Interval.minor_third
          ]
        )
      end
    end

    describe ":minor_triad" do
      subject(:chord_type) { described_class.minor_triad }

      it "sets the expected attributes" do
        expect(chord_type).to have_attributes(
          to_s: "m",
          note_count: 3,
          intervals: [
            Stave::Theory::Interval.perfect_unison,
            Stave::Theory::Interval.minor_third,
            Stave::Theory::Interval.perfect_fifth
          ],
          steps: [
            Stave::Theory::Interval.minor_third,
            Stave::Theory::Interval.major_third
          ]
        )
      end
    end

    describe ":diminished_triad" do
      subject(:chord_type) { described_class.diminished_triad }

      it "sets the expected attributes" do
        expect(chord_type).to have_attributes(
          to_s: "o",
          note_count: 3,
          intervals: [
            Stave::Theory::Interval.perfect_unison,
            Stave::Theory::Interval.minor_third,
            Stave::Theory::Interval.diminished_fifth
          ],
          steps: [
            Stave::Theory::Interval.minor_third,
            Stave::Theory::Interval.minor_third
          ]
        )
      end
    end
  end
end
