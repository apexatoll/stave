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
end
