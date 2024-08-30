RSpec.describe Stave::Theory::Degree do
  describe ":root" do
    subject(:degree) { described_class.root }

    it "sets the expected attributes" do
      expect(degree).to have_attributes(
        interval: Stave::Theory::Interval.perfect_unison,
        accidental: Stave::Theory::Accidental.natural,
        to_s: "R",
        to_i: 0
      )
    end
  end

  describe ":flat_two" do
    subject(:degree) { described_class.flat_two }

    it "sets the expected attributes" do
      expect(degree).to have_attributes(
        interval: Stave::Theory::Interval.minor_second,
        accidental: Stave::Theory::Accidental.flat,
        to_s: "♭2",
        to_i: 1
      )
    end
  end

  describe ":two" do
    subject(:degree) { described_class.two }

    it "sets the expected attributes" do
      expect(degree).to have_attributes(
        interval: Stave::Theory::Interval.major_second,
        accidental: Stave::Theory::Accidental.natural,
        to_s: "2",
        to_i: 2
      )
    end
  end

  describe ":sharp_two" do
    subject(:degree) { described_class.sharp_two }

    it "sets the expected attributes" do
      expect(degree).to have_attributes(
        interval: Stave::Theory::Interval.augmented_second,
        accidental: Stave::Theory::Accidental.sharp,
        to_s: "♯2",
        to_i: 3
      )
    end
  end

  describe ":flat_three" do
    subject(:degree) { described_class.flat_three }

    it "sets the expected attributes" do
      expect(degree).to have_attributes(
        interval: Stave::Theory::Interval.minor_third,
        accidental: Stave::Theory::Accidental.flat,
        to_s: "♭3",
        to_i: 3
      )
    end
  end

  describe ":three" do
    subject(:degree) { described_class.three }

    it "sets the expected attributes" do
      expect(degree).to have_attributes(
        interval: Stave::Theory::Interval.major_third,
        accidental: Stave::Theory::Accidental.natural,
        to_s: "3",
        to_i: 4
      )
    end
  end

  describe ":sharp_three" do
    subject(:degree) { described_class.sharp_three }

    it "sets the expected attributes" do
      expect(degree).to have_attributes(
        interval: Stave::Theory::Interval.augmented_third,
        accidental: Stave::Theory::Accidental.sharp,
        to_s: "♯3",
        to_i: 5
      )
    end
  end

  describe ":flat_four" do
    subject(:degree) { described_class.flat_four }

    it "sets the expected attributes" do
      expect(degree).to have_attributes(
        interval: Stave::Theory::Interval.diminished_fourth,
        accidental: Stave::Theory::Accidental.flat,
        to_s: "♭4",
        to_i: 4
      )
    end
  end

  describe ":four" do
    subject(:degree) { described_class.four }

    it "sets the expected attributes" do
      expect(degree).to have_attributes(
        interval: Stave::Theory::Interval.perfect_fourth,
        accidental: Stave::Theory::Accidental.natural,
        to_s: "4",
        to_i: 5
      )
    end
  end

  describe ":sharp_four" do
    subject(:degree) { described_class.sharp_four }

    it "sets the expected attributes" do
      expect(degree).to have_attributes(
        interval: Stave::Theory::Interval.augmented_fourth,
        accidental: Stave::Theory::Accidental.sharp,
        to_s: "♯4",
        to_i: 6
      )
    end
  end

  describe ":flat_five" do
    subject(:degree) { described_class.flat_five }

    it "sets the expected attributes" do
      expect(degree).to have_attributes(
        interval: Stave::Theory::Interval.diminished_fifth,
        accidental: Stave::Theory::Accidental.flat,
        to_s: "♭5",
        to_i: 6
      )
    end
  end

  describe ":five" do
    subject(:degree) { described_class.five }

    it "sets the expected attributes" do
      expect(degree).to have_attributes(
        interval: Stave::Theory::Interval.perfect_fifth,
        accidental: Stave::Theory::Accidental.natural,
        to_s: "5",
        to_i: 7
      )
    end
  end

  describe ":sharp_five" do
    subject(:degree) { described_class.sharp_five }

    it "sets the expected attributes" do
      expect(degree).to have_attributes(
        interval: Stave::Theory::Interval.augmented_fifth,
        accidental: Stave::Theory::Accidental.sharp,
        to_s: "♯5",
        to_i: 8
      )
    end
  end

  describe ":flat_six" do
    subject(:degree) { described_class.flat_six }

    it "sets the expected attributes" do
      expect(degree).to have_attributes(
        interval: Stave::Theory::Interval.minor_sixth,
        accidental: Stave::Theory::Accidental.flat,
        to_s: "♭6",
        to_i: 8
      )
    end
  end

  describe ":six" do
    subject(:degree) { described_class.six }

    it "sets the expected attributes" do
      expect(degree).to have_attributes(
        interval: Stave::Theory::Interval.major_sixth,
        accidental: Stave::Theory::Accidental.natural,
        to_s: "6",
        to_i: 9
      )
    end
  end

  describe ":sharp_six" do
    subject(:degree) { described_class.sharp_six }

    it "sets the expected attributes" do
      expect(degree).to have_attributes(
        interval: Stave::Theory::Interval.augmented_sixth,
        accidental: Stave::Theory::Accidental.sharp,
        to_s: "♯6",
        to_i: 10
      )
    end
  end

  describe ":flat_seven" do
    subject(:degree) { described_class.flat_seven }

    it "sets the expected attributes" do
      expect(degree).to have_attributes(
        interval: Stave::Theory::Interval.minor_seventh,
        accidental: Stave::Theory::Accidental.flat,
        to_s: "♭7",
        to_i: 10
      )
    end
  end

  describe ":seven" do
    subject(:degree) { described_class.seven }

    it "sets the expected attributes" do
      expect(degree).to have_attributes(
        interval: Stave::Theory::Interval.major_seventh,
        accidental: Stave::Theory::Accidental.natural,
        to_s: "7",
        to_i: 11
      )
    end
  end

  describe ":octave" do
    subject(:degree) { described_class.octave }

    it "sets the expected attributes" do
      expect(degree).to have_attributes(
        interval: Stave::Theory::Interval.perfect_octave,
        accidental: Stave::Theory::Accidental.natural,
        to_s: "R",
        to_i: 12
      )
    end
  end
end
