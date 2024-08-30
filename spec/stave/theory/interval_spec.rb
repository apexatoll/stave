RSpec.describe Stave::Theory::Interval do
  describe Stave::Theory::Interval::Quality do
    describe ":diminished" do
      subject(:quality) { described_class.diminished }

      it "sets the expected attributes" do
        expect(quality).to have_attributes(
          transform: { major: -2, perfect: -1 },
          to_s: "d"
        )
      end
    end

    describe ":minor" do
      subject(:quality) { described_class.minor }

      it "sets the expected attributes" do
        expect(quality).to have_attributes(
          transform: { major: -1, perfect: nil },
          to_s: "m"
        )
      end
    end

    describe ":major" do
      subject(:quality) { described_class.major }

      it "sets the expected attributes" do
        expect(quality).to have_attributes(
          transform: { major: 0, perfect: nil },
          to_s: "M"
        )
      end
    end

    describe ":perfect" do
      subject(:quality) { described_class.perfect }

      it "sets the expected attributes" do
        expect(quality).to have_attributes(
          transform: { major: nil, perfect: 0 },
          to_s: "P"
        )
      end
    end

    describe ":augmentred" do
      subject(:quality) { described_class.augmented }

      it "sets the expected attributes" do
        expect(quality).to have_attributes(
          transform: { major: 1, perfect: 1 },
          to_s: "A"
        )
      end
    end
  end

  describe Stave::Theory::Interval::Number do
    describe ":one" do
      subject(:number) { described_class.one }

      it "sets the expected attributes" do
        expect(number).to have_attributes(
          degree: 1, size: 0, to_i: 1, to_s: "1"
        )
      end
    end

    describe ":two" do
      subject(:number) { described_class.two }

      it "sets the expected attributes" do
        expect(number).to have_attributes(
          degree: 2, size: 2, to_i: 2, to_s: "2"
        )
      end
    end

    describe ":three" do
      subject(:number) { described_class.three }

      it "sets the expected attributes" do
        expect(number).to have_attributes(
          degree: 3, size: 4, to_i: 3, to_s: "3"
        )
      end
    end

    describe ":four" do
      subject(:number) { described_class.four }

      it "sets the expected attributes" do
        expect(number).to have_attributes(
          degree: 4, size: 5, to_i: 4, to_s: "4"
        )
      end
    end

    describe ":five" do
      subject(:number) { described_class.five }

      it "sets the expected attributes" do
        expect(number).to have_attributes(
          degree: 5, size: 7, to_i: 5, to_s: "5"
        )
      end
    end

    describe ":six" do
      subject(:number) { described_class.six }

      it "sets the expected attributes" do
        expect(number).to have_attributes(
          degree: 6, size: 9, to_i: 6, to_s: "6"
        )
      end
    end

    describe ":seven" do
      subject(:number) { described_class.seven }

      it "sets the expected attributes" do
        expect(number).to have_attributes(
          degree: 7, size: 11, to_i: 7, to_s: "7"
        )
      end
    end

    describe ":eight" do
      subject(:number) { described_class.eight }

      it "sets the expected attributes" do
        expect(number).to have_attributes(
          degree: 1, size: 12, to_i: 8, to_s: "8"
        )
      end
    end

    describe ":nine" do
      subject(:number) { described_class.nine }

      it "sets the expected attributes" do
        expect(number).to have_attributes(
          degree: 2, size: 14, to_i: 9, to_s: "9"
        )
      end
    end

    describe ":eleven" do
      subject(:number) { described_class.eleven }

      it "sets the expected attributes" do
        expect(number).to have_attributes(
          degree: 4, size: 17, to_i: 11, to_s: "11"
        )
      end
    end

    describe ":thirteen" do
      subject(:number) { described_class.thirteen }

      it "sets the expected attributes" do
        expect(number).to have_attributes(
          degree: 6, size: 21, to_i: 13, to_s: "13"
        )
      end
    end
  end

  describe "unisons" do
    describe ":perfect_unison" do
      subject(:interval) { described_class.perfect_unison }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "P1", to_i: 0)
      end
    end
  end

  describe "seconds" do
    describe ":minor_second" do
      subject(:interval) { described_class.minor_second }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "m2", to_i: 1)
      end
    end

    describe ":major_second" do
      subject(:interval) { described_class.major_second }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "M2", to_i: 2)
      end
    end

    describe ":augmented_second" do
      subject(:interval) { described_class.augmented_second }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "A2", to_i: 3)
      end
    end
  end

  describe "thirds" do
    describe ":diminished_third" do
      subject(:interval) { described_class.diminished_third }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "d3", to_i: 2)
      end
    end

    describe ":minor_third" do
      subject(:interval) { described_class.minor_third }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "m3", to_i: 3)
      end
    end

    describe ":major_third" do
      subject(:interval) { described_class.major_third }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "M3", to_i: 4)
      end
    end
  end

  describe "fourths" do
    describe ":diminished_fourth" do
      subject(:interval) { described_class.diminished_fourth }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "d4", to_i: 4)
      end
    end

    describe ":perfect_fourth" do
      subject(:interval) { described_class.perfect_fourth }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "P4", to_i: 5)
      end
    end

    describe ":augmented_fourth" do
      subject(:interval) { described_class.augmented_fourth }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "A4", to_i: 6)
      end
    end
  end

  describe "fifths" do
    describe ":diminished_fifth" do
      subject(:interval) { described_class.diminished_fifth }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "d5", to_i: 6)
      end
    end

    describe ":perfect_fifth" do
      subject(:interval) { described_class.perfect_fifth }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "P5", to_i: 7)
      end
    end

    describe ":augmented_fifth" do
      subject(:interval) { described_class.augmented_fifth }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "A5", to_i: 8)
      end
    end
  end

  describe "sixths" do
    describe ":diminished_sixth" do
      subject(:interval) { described_class.diminished_sixth }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "d6", to_i: 7)
      end
    end

    describe ":minor_sixth" do
      subject(:interval) { described_class.minor_sixth }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "m6", to_i: 8)
      end
    end

    describe ":major_sixth" do
      subject(:interval) { described_class.major_sixth }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "M6", to_i: 9)
      end
    end

    describe ":augmented_sixth" do
      subject(:interval) { described_class.augmented_sixth }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "A6", to_i: 10)
      end
    end
  end

  describe "sevenths" do
    describe ":diminished_seventh" do
      subject(:interval) { described_class.diminished_seventh }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "d7", to_i: 9)
      end
    end

    describe ":minor_seventh" do
      subject(:interval) { described_class.minor_seventh }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "m7", to_i: 10)
      end
    end

    describe ":major_seventh" do
      subject(:interval) { described_class.major_seventh }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "M7", to_i: 11)
      end
    end
  end

  describe "octaves" do
    describe ":perfect_octave" do
      subject(:interval) { described_class.perfect_octave }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "P8", to_i: 12)
      end
    end
  end

  describe "ninths" do
    describe ":minor_ninth" do
      subject(:interval) { described_class.minor_ninth }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "m9", to_i: 13)
      end
    end

    describe ":major_ninth" do
      subject(:interval) { described_class.major_ninth }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "M9", to_i: 14)
      end
    end

    describe ":augmented_ninth" do
      subject(:interval) { described_class.augmented_ninth }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "A9", to_i: 15)
      end
    end
  end

  describe "elevenths" do
    describe ":diminished_eleventh" do
      subject(:interval) { described_class.diminished_eleventh }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "d11", to_i: 16)
      end
    end

    describe ":perfect_eleventh" do
      subject(:interval) { described_class.perfect_eleventh }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "P11", to_i: 17)
      end
    end

    describe ":augmented_eleventh" do
      subject(:interval) { described_class.augmented_eleventh }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "A11", to_i: 18)
      end
    end
  end

  describe "thirteenths" do
    describe ":diminished_thirteenth" do
      subject(:interval) { described_class.diminished_thirteenth }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "d13", to_i: 19)
      end
    end

    describe ":minor_thirteenth" do
      subject(:interval) { described_class.minor_thirteenth }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "m13", to_i: 20)
      end
    end

    describe ":major_thirteenth" do
      subject(:interval) { described_class.major_thirteenth }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "M13", to_i: 21)
      end
    end

    describe ":augmented_thirteenth" do
      subject(:interval) { described_class.augmented_thirteenth }

      it "sets the expected attributes" do
        expect(interval).to have_attributes(to_s: "A13", to_i: 22)
      end
    end
  end
end
