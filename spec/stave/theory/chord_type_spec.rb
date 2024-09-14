RSpec.describe Stave::Theory::ChordType do
  describe ":triads" do
    describe "scope" do
      subject(:scope) { described_class.triads }

      it "returns the expected variants" do
        expect(scope).to contain_exactly(
          described_class.major_triad,
          described_class.minor_triad,
          described_class.diminished_triad
        )
      end
    end

    describe ":major_triad" do
      subject(:chord_type) { described_class.major_triad }

      it "sets the expected attributes" do
        expect(chord_type).to have_attributes(
          symbol: "",
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
          symbol: "m",
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
          symbol: "o",
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

  describe ":sevenths" do
    describe "scope" do
      subject(:scope) { described_class.sevenths }

      it "returns the expected variants" do
        expect(scope).to contain_exactly(
          described_class.major_seventh,
          described_class.dominant_seventh,
          described_class.minor_seventh,
          described_class.half_diminished_seventh
        )
      end
    end

    describe ":major_seventh" do
      subject(:chord_type) { described_class.major_seventh }

      it "sets the expected attributes" do
        expect(chord_type).to have_attributes(
          symbol: "∆7",
          note_count: 4,
          intervals: [
            Stave::Theory::Interval.perfect_unison,
            Stave::Theory::Interval.major_third,
            Stave::Theory::Interval.perfect_fifth,
            Stave::Theory::Interval.major_seventh
          ],
          steps: [
            Stave::Theory::Interval.major_third,
            Stave::Theory::Interval.minor_third,
            Stave::Theory::Interval.major_third
          ]
        )
      end
    end

    describe ":dominant_seventh" do
      subject(:chord_type) { described_class.dominant_seventh }

      it "sets the expected attributes" do
        expect(chord_type).to have_attributes(
          symbol: "7",
          note_count: 4,
          intervals: [
            Stave::Theory::Interval.perfect_unison,
            Stave::Theory::Interval.major_third,
            Stave::Theory::Interval.perfect_fifth,
            Stave::Theory::Interval.minor_seventh
          ],
          steps: [
            Stave::Theory::Interval.major_third,
            Stave::Theory::Interval.minor_third,
            Stave::Theory::Interval.minor_third
          ]
        )
      end
    end

    describe ":minor_seventh" do
      subject(:chord_type) { described_class.minor_seventh }

      it "sets the expected attributes" do
        expect(chord_type).to have_attributes(
          symbol: "m7",
          note_count: 4,
          intervals: [
            Stave::Theory::Interval.perfect_unison,
            Stave::Theory::Interval.minor_third,
            Stave::Theory::Interval.perfect_fifth,
            Stave::Theory::Interval.minor_seventh
          ],
          steps: [
            Stave::Theory::Interval.minor_third,
            Stave::Theory::Interval.major_third,
            Stave::Theory::Interval.minor_third
          ]
        )
      end
    end

    describe ":half_diminished_seventh" do
      subject(:chord_type) { described_class.half_diminished_seventh }

      it "sets the expected attributes" do
        expect(chord_type).to have_attributes(
          symbol: "ø7",
          note_count: 4,
          intervals: [
            Stave::Theory::Interval.perfect_unison,
            Stave::Theory::Interval.minor_third,
            Stave::Theory::Interval.diminished_fifth,
            Stave::Theory::Interval.minor_seventh
          ],
          steps: [
            Stave::Theory::Interval.minor_third,
            Stave::Theory::Interval.minor_third,
            Stave::Theory::Interval.major_third
          ]
        )
      end
    end
  end
end
