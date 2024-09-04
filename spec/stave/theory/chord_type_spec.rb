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

  describe ":sevenths" do
    describe ":major_seventh" do
      subject(:chord_type) { described_class.major_seventh }

      it "sets the expected attributes" do
        expect(chord_type).to have_attributes(
          to_s: "∆7",
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
          to_s: "7",
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
          to_s: "m7",
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
          to_s: "ø7",
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
