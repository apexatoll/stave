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
    shared_examples :handles_addition do |assertions|
      subject(:sum) { number + other }

      assertions.each do |assertion|
        describe ":#{assertion[:other]}" do
          let(:other) { described_class.new(assertion[:other]) }

          let(:expected) { described_class.new(assertion[:expected]) }

          it "= :#{assertion[:expected]}" do
            expect(sum).to eq(expected)
          end
        end
      end
    end

    describe ":one" do
      subject(:number) { described_class.one }

      it "sets the expected attributes" do
        expect(number).to have_attributes(
          degree: 1,
          size: 0,
          relative: number,
          to_i: 1,
          to_s: "1"
        )
      end

      describe "+" do
        include_examples :handles_addition, [
          { other: :one, expected: :one },
          { other: :two, expected: :two },
          { other: :three, expected: :three },
          { other: :four, expected: :four },
          { other: :five, expected: :five },
          { other: :six, expected: :six },
          { other: :seven, expected: :seven },
          { other: :eight, expected: :one },
          { other: :nine, expected: :two },
          { other: :eleven, expected: :four },
          { other: :thirteen, expected: :six }
        ]
      end
    end

    describe ":two" do
      subject(:number) { described_class.two }

      it "sets the expected attributes" do
        expect(number).to have_attributes(
          degree: 2,
          size: 2,
          relative: number,
          to_i: 2,
          to_s: "2"
        )
      end

      describe "+" do
        include_examples :handles_addition, [
          { other: :one, expected: :two },
          { other: :two, expected: :three },
          { other: :three, expected: :four },
          { other: :four, expected: :five },
          { other: :five, expected: :six },
          { other: :six, expected: :seven },
          { other: :seven, expected: :one },
          { other: :eight, expected: :two },
          { other: :nine, expected: :three },
          { other: :eleven, expected: :five },
          { other: :thirteen, expected: :seven }
        ]
      end
    end

    describe ":three" do
      subject(:number) { described_class.three }

      it "sets the expected attributes" do
        expect(number).to have_attributes(
          degree: 3,
          size: 4,
          relative: number,
          to_i: 3,
          to_s: "3"
        )
      end

      describe "+" do
        include_examples :handles_addition, [
          { other: :one, expected: :three },
          { other: :two, expected: :four },
          { other: :three, expected: :five },
          { other: :four, expected: :six },
          { other: :five, expected: :seven },
          { other: :six, expected: :one },
          { other: :seven, expected: :two },
          { other: :eight, expected: :three },
          { other: :nine, expected: :four },
          { other: :eleven, expected: :six },
          { other: :thirteen, expected: :one }
        ]
      end
    end

    describe ":four" do
      subject(:number) { described_class.four }

      it "sets the expected attributes" do
        expect(number).to have_attributes(
          degree: 4,
          size: 5,
          relative: number,
          to_i: 4,
          to_s: "4"
        )
      end

      describe "+" do
        include_examples :handles_addition, [
          { other: :one, expected: :four },
          { other: :two, expected: :five },
          { other: :three, expected: :six },
          { other: :four, expected: :seven },
          { other: :five, expected: :one },
          { other: :six, expected: :two },
          { other: :seven, expected: :three },
          { other: :eight, expected: :four },
          { other: :nine, expected: :five },
          { other: :eleven, expected: :seven },
          { other: :thirteen, expected: :two }
        ]
      end
    end

    describe ":five" do
      subject(:number) { described_class.five }

      it "sets the expected attributes" do
        expect(number).to have_attributes(
          degree: 5,
          size: 7,
          relative: number,
          to_i: 5,
          to_s: "5"
        )
      end

      describe "+" do
        include_examples :handles_addition, [
          { other: :one, expected: :five },
          { other: :two, expected: :six },
          { other: :three, expected: :seven },
          { other: :four, expected: :one },
          { other: :five, expected: :two },
          { other: :six, expected: :three },
          { other: :seven, expected: :four },
          { other: :eight, expected: :five },
          { other: :nine, expected: :six },
          { other: :eleven, expected: :one },
          { other: :thirteen, expected: :three }
        ]
      end
    end

    describe ":six" do
      subject(:number) { described_class.six }

      it "sets the expected attributes" do
        expect(number).to have_attributes(
          degree: 6,
          size: 9,
          relative: number,
          to_i: 6,
          to_s: "6"
        )
      end

      describe "+" do
        include_examples :handles_addition, [
          { other: :one, expected: :six },
          { other: :two, expected: :seven },
          { other: :three, expected: :one },
          { other: :four, expected: :two },
          { other: :five, expected: :three },
          { other: :six, expected: :four },
          { other: :seven, expected: :five },
          { other: :eight, expected: :six },
          { other: :nine, expected: :seven },
          { other: :eleven, expected: :two },
          { other: :thirteen, expected: :four }
        ]
      end
    end

    describe ":seven" do
      subject(:number) { described_class.seven }

      it "sets the expected attributes" do
        expect(number).to have_attributes(
          degree: 7,
          size: 11,
          relative: number,
          to_i: 7,
          to_s: "7"
        )
      end

      describe "+" do
        include_examples :handles_addition, [
          { other: :one, expected: :seven },
          { other: :two, expected: :one },
          { other: :three, expected: :two },
          { other: :four, expected: :three },
          { other: :five, expected: :four },
          { other: :six, expected: :five },
          { other: :seven, expected: :six },
          { other: :eight, expected: :seven },
          { other: :nine, expected: :one },
          { other: :eleven, expected: :three },
          { other: :thirteen, expected: :five }
        ]
      end
    end

    describe ":eight" do
      subject(:number) { described_class.eight }

      it "sets the expected attributes" do
        expect(number).to have_attributes(
          degree: 1,
          size: 12,
          relative: described_class.one,
          to_i: 8,
          to_s: "8"
        )
      end

      describe "+" do
        include_examples :handles_addition, [
          { other: :one, expected: :one },
          { other: :two, expected: :two },
          { other: :three, expected: :three },
          { other: :four, expected: :four },
          { other: :five, expected: :five },
          { other: :six, expected: :six },
          { other: :seven, expected: :seven },
          { other: :eight, expected: :one },
          { other: :nine, expected: :two },
          { other: :eleven, expected: :four },
          { other: :thirteen, expected: :six }
        ]
      end
    end

    describe ":nine" do
      subject(:number) { described_class.nine }

      it "sets the expected attributes" do
        expect(number).to have_attributes(
          degree: 2,
          size: 14,
          relative: described_class.two,
          to_i: 9,
          to_s: "9"
        )
      end

      describe "+" do
        include_examples :handles_addition, [
          { other: :one, expected: :two },
          { other: :two, expected: :three },
          { other: :three, expected: :four },
          { other: :four, expected: :five },
          { other: :five, expected: :six },
          { other: :six, expected: :seven },
          { other: :seven, expected: :one },
          { other: :eight, expected: :two },
          { other: :nine, expected: :three },
          { other: :eleven, expected: :five },
          { other: :thirteen, expected: :seven }
        ]
      end
    end

    describe ":eleven" do
      subject(:number) { described_class.eleven }

      it "sets the expected attributes" do
        expect(number).to have_attributes(
          degree: 4,
          size: 17,
          relative: described_class.four,
          to_i: 11,
          to_s: "11"
        )
      end

      describe "+" do
        include_examples :handles_addition, [
          { other: :one, expected: :four },
          { other: :two, expected: :five },
          { other: :three, expected: :six },
          { other: :four, expected: :seven },
          { other: :five, expected: :one },
          { other: :six, expected: :two },
          { other: :seven, expected: :three },
          { other: :eight, expected: :four },
          { other: :nine, expected: :five },
          { other: :eleven, expected: :seven },
          { other: :thirteen, expected: :two }
        ]
      end
    end

    describe ":thirteen" do
      subject(:number) { described_class.thirteen }

      it "sets the expected attributes" do
        expect(number).to have_attributes(
          degree: 6,
          size: 21,
          relative: described_class.six,
          to_i: 13,
          to_s: "13"
        )
      end

      describe "+" do
        include_examples :handles_addition, [
          { other: :one, expected: :six },
          { other: :two, expected: :seven },
          { other: :three, expected: :one },
          { other: :four, expected: :two },
          { other: :five, expected: :three },
          { other: :six, expected: :four },
          { other: :seven, expected: :five },
          { other: :eight, expected: :six },
          { other: :nine, expected: :seven },
          { other: :eleven, expected: :two },
          { other: :thirteen, expected: :four }
        ]
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

  describe "#invert!" do
    subject(:inverted) { interval.invert! }

    [
      { interval: :perfect_unison, inverted: :perfect_unison },
      { interval: :minor_second, inverted: :major_seventh },
      { interval: :major_second, inverted: :minor_seventh },
      { interval: :augmented_second, inverted: :diminished_seventh },
      { interval: :diminished_third, inverted: :augmented_sixth },
      { interval: :minor_third, inverted: :major_sixth },
      { interval: :major_third, inverted: :minor_sixth },
      { interval: :augmented_third, inverted: :diminished_sixth },
      { interval: :diminished_fourth, inverted: :augmented_fifth },
      { interval: :perfect_fourth, inverted: :perfect_fifth },
      { interval: :augmented_fourth, inverted: :diminished_fifth },
      { interval: :diminished_fifth, inverted: :augmented_fourth },
      { interval: :perfect_fifth, inverted: :perfect_fourth },
      { interval: :augmented_fifth, inverted: :diminished_fourth },
      { interval: :diminished_sixth, inverted: :augmented_third },
      { interval: :minor_sixth, inverted: :major_third },
      { interval: :major_sixth, inverted: :minor_third },
      { interval: :augmented_sixth, inverted: :diminished_third },
      { interval: :diminished_seventh, inverted: :augmented_second },
      { interval: :minor_seventh, inverted: :major_second },
      { interval: :major_seventh, inverted: :minor_second },
      { interval: :perfect_octave, inverted: :perfect_octave },
      { interval: :minor_ninth, inverted: :major_seventh },
      { interval: :major_ninth, inverted: :minor_seventh },
      { interval: :augmented_ninth, inverted: :diminished_seventh },
      { interval: :diminished_eleventh, inverted: :augmented_fifth },
      { interval: :perfect_eleventh, inverted: :perfect_fifth },
      { interval: :augmented_eleventh, inverted: :diminished_fifth },
      { interval: :diminished_thirteenth, inverted: :augmented_third },
      { interval: :minor_thirteenth, inverted: :major_third },
      { interval: :major_thirteenth, inverted: :minor_third },
      { interval: :augmented_thirteenth, inverted: :diminished_third }
    ].each do |params|
      describe params[:interval].to_s do
        let(:interval) { described_class.new(params[:interval]) }
        let(:expected) { described_class.new(params[:inverted]) }

        it "returns #{params[:inverted]}" do
          expect(inverted).to eq(expected)
        end
      end
    end
  end

  describe "#+" do
    subject(:sum) { interval + other }

    shared_examples :adds_intervals do |cases|
      cases.each do |params|
        context "and other is #{params[:other]}" do
          let(:other) { described_class.new(params[:other]) }

          let(:expected) { described_class.new(params[:expected]) }

          it "returns #{params[:expected]}" do
            expect(sum).to eq(expected)
          end
        end
      end
    end

    context "when current is perfect_unison" do
      let(:interval) { described_class.perfect_unison }

      include_examples :adds_intervals, [
        { other: :perfect_unison, expected: :perfect_unison },
        { other: :minor_second, expected: :minor_second },
        { other: :major_second, expected: :major_second },
        { other: :augmented_second, expected: :augmented_second },
        { other: :diminished_third, expected: :diminished_third },
        { other: :minor_third, expected: :minor_third },
        { other: :major_third, expected: :major_third },
        { other: :augmented_third, expected: :augmented_third },
        { other: :diminished_fourth, expected: :diminished_fourth },
        { other: :perfect_fourth, expected: :perfect_fourth },
        { other: :augmented_fourth, expected: :augmented_fourth },
        { other: :diminished_fifth, expected: :diminished_fifth },
        { other: :perfect_fifth, expected: :perfect_fifth },
        { other: :augmented_fifth, expected: :augmented_fifth },
        { other: :diminished_sixth, expected: :diminished_sixth },
        { other: :minor_sixth, expected: :minor_sixth },
        { other: :major_sixth, expected: :major_sixth },
        { other: :augmented_sixth, expected: :augmented_sixth },
        { other: :diminished_seventh, expected: :diminished_seventh },
        { other: :minor_seventh, expected: :minor_seventh },
        { other: :major_seventh, expected: :major_seventh },
        { other: :perfect_octave, expected: :perfect_unison },
        { other: :minor_ninth, expected: :minor_second },
        { other: :major_ninth, expected: :major_second },
        { other: :augmented_ninth, expected: :augmented_second },
        { other: :diminished_eleventh, expected: :diminished_fourth },
        { other: :perfect_eleventh, expected: :perfect_fourth },
        { other: :augmented_eleventh, expected: :augmented_fourth },
        { other: :diminished_thirteenth, expected: :diminished_sixth },
        { other: :minor_thirteenth, expected: :minor_sixth },
        { other: :major_thirteenth, expected: :major_sixth },
        { other: :augmented_thirteenth, expected: :augmented_sixth }
      ]
    end

    context "when current is minor_second" do
      let(:interval) { described_class.minor_second }

      include_examples :adds_intervals, [
        { other: :perfect_unison, expected: :minor_second },
        { other: :minor_second, expected: :diminished_third },
        { other: :major_second, expected: :minor_third },
        { other: :augmented_second, expected: :major_third },
        # { other: :diminished_third, expected: nil },
        { other: :minor_third, expected: :diminished_fourth },
        { other: :major_third, expected: :perfect_fourth },
        { other: :augmented_third, expected: :augmented_fourth },
        # { other: :diminished_fourth, expected: nil },
        { other: :perfect_fourth, expected: :diminished_fifth },
        { other: :augmented_fourth, expected: :perfect_fifth },
        { other: :diminished_fifth, expected: :diminished_sixth },
        { other: :perfect_fifth, expected: :minor_sixth },
        { other: :augmented_fifth, expected: :major_sixth },
        { other: :minor_sixth, expected: :diminished_seventh },
        { other: :major_sixth, expected: :minor_seventh },
        { other: :augmented_sixth, expected: :major_seventh },
        # { other: :diminished_seventh, expected: nil },
        # { other: :minor_seventh, expected: nil },
        { other: :major_seventh, expected: :perfect_unison },
        { other: :perfect_octave, expected: :minor_second },
        { other: :minor_ninth, expected: :diminished_third },
        { other: :major_ninth, expected: :minor_third },
        { other: :augmented_ninth, expected: :major_third },
        # { other: :diminished_eleventh, expected: nil },
        { other: :perfect_eleventh, expected: :diminished_fifth },
        { other: :augmented_eleventh, expected: :perfect_fifth },
        # { other: :diminished_thirteenth, expected: nil },
        { other: :minor_thirteenth, expected: :diminished_seventh },
        { other: :major_thirteenth, expected: :minor_seventh },
        { other: :augmented_thirteenth, expected: :major_seventh }
      ]
    end

    context "when current is major_third" do
      let(:interval) { described_class.major_third }

      include_examples :adds_intervals, [
        { other: :perfect_unison, expected: :major_third },
        { other: :minor_second, expected: :perfect_fourth },
        { other: :major_second, expected: :augmented_fourth },
        # { other: :augmented_second, expected: nil },
        { other: :diminished_third, expected: :diminished_fifth },
        { other: :minor_third, expected: :perfect_fifth },
        { other: :major_third, expected: :augmented_fifth },
        # { other: :augmented_third, expected: nil },
        { other: :diminished_fourth, expected: :minor_sixth },
        { other: :perfect_fourth, expected: :major_sixth },
        { other: :augmented_fourth, expected: :augmented_sixth },
        { other: :diminished_fifth, expected: :minor_seventh },
        { other: :perfect_fifth, expected: :major_seventh },
        # { other: :augmented_fifth, expected: nil },
        # { other: :diminished_sixth, expected: nil },
        { other: :minor_sixth, expected: :perfect_unison },
        # { other: :major_sixth, expected: nil },
        # { other: :augmented_sixth, expected: nil },
        { other: :diminished_seventh, expected: :minor_second },
        { other: :minor_seventh, expected: :major_second },
        { other: :major_seventh, expected: :augmented_second },
        { other: :perfect_octave, expected: :major_third },
        { other: :minor_ninth, expected: :perfect_fourth },
        { other: :major_ninth, expected: :augmented_fourth },
        # { other: :augmented_ninth, expected: nil },
        { other: :diminished_eleventh, expected: :minor_sixth },
        { other: :perfect_eleventh, expected: :major_sixth },
        { other: :augmented_eleventh, expected: :augmented_sixth },
        # { other: :diminished_thirteenth, expected: nil },
        { other: :minor_thirteenth, expected: :perfect_unison }
        # { other: :major_thirteenth, expected: nil },
        # { other: :augmented_thirteenth, expected: nil }
      ]
    end

    context "when current is perfect_fourth" do
      let(:interval) { described_class.perfect_fourth }

      include_examples :adds_intervals, [
        { other: :perfect_unison, expected: :perfect_fourth },
        { other: :minor_second, expected: :diminished_fifth },
        { other: :major_second, expected: :perfect_fifth },
        { other: :augmented_second, expected: :augmented_fifth },
        { other: :diminished_third, expected: :diminished_sixth },
        { other: :minor_third, expected: :minor_sixth },
        { other: :major_third, expected: :major_sixth },
        { other: :augmented_third, expected: :augmented_sixth },
        { other: :diminished_fourth, expected: :diminished_seventh },
        { other: :perfect_fourth, expected: :minor_seventh },
        { other: :augmented_fourth, expected: :major_seventh },
        # { other: :diminished_fifth, expected: nil },
        { other: :perfect_fifth, expected: :perfect_unison },
        # { other: :augmented_fifth, expected: nil },
        # { other: :diminished_sixth, expected: nil },
        { other: :minor_sixth, expected: :minor_second },
        { other: :major_sixth, expected: :major_second },
        { other: :augmented_sixth, expected: :augmented_second },
        { other: :diminished_seventh, expected: :diminished_third },
        { other: :minor_seventh, expected: :minor_third },
        { other: :major_seventh, expected: :major_third },
        { other: :perfect_octave, expected: :perfect_fourth },
        { other: :minor_ninth, expected: :diminished_fifth },
        { other: :major_ninth, expected: :perfect_fifth },
        { other: :augmented_ninth, expected: :augmented_fifth },
        { other: :diminished_eleventh, expected: :diminished_seventh },
        { other: :perfect_eleventh, expected: :minor_seventh },
        { other: :augmented_eleventh, expected: :major_seventh },
        # { other: :diminished_thirteenth, expected: nil },
        { other: :minor_thirteenth, expected: :minor_second },
        { other: :major_thirteenth, expected: :major_second },
        { other: :augmented_thirteenth, expected: :augmented_second }
      ]
    end

    context "when current is diminished_fifth" do
      let(:interval) { described_class.diminished_fifth }

      include_examples :adds_intervals, [
        { other: :perfect_unison, expected: :diminished_fifth },
        { other: :minor_second, expected: :diminished_sixth },
        { other: :major_second, expected: :minor_sixth },
        { other: :augmented_second, expected: :major_sixth },
        # { other: :diminished_third, expected: nil },
        { other: :minor_third, expected: :diminished_seventh },
        { other: :major_third, expected: :minor_seventh },
        { other: :augmented_third, expected: :major_seventh },
        # { other: :diminished_fourth, expected: nil },
        # { other: :perfect_fourth, expected: nil },
        { other: :augmented_fourth, expected: :perfect_unison },
        # { other: :diminished_fifth, expected: nil },
        { other: :perfect_fifth, expected: :minor_second },
        { other: :augmented_fifth, expected: :major_second },
        # { other: :diminished_sixth, expected: nil },
        { other: :minor_sixth, expected: :diminished_third },
        { other: :major_sixth, expected: :minor_third },
        { other: :augmented_sixth, expected: :major_third },
        # { other: :diminished_seventh, expected: nil },
        { other: :minor_seventh, expected: :diminished_fourth },
        { other: :major_seventh, expected: :perfect_fourth },
        { other: :perfect_octave, expected: :diminished_fifth },
        { other: :minor_ninth, expected: :diminished_sixth },
        { other: :major_ninth, expected: :minor_sixth },
        { other: :augmented_ninth, expected: :major_sixth },
        # { other: :diminished_eleventh, expected: nil },
        # { other: :perfect_eleventh, expected: nil },
        { other: :augmented_eleventh, expected: :perfect_unison },
        # { other: :diminished_thirteenth, expected: nil },
        { other: :minor_thirteenth, expected: :diminished_third },
        { other: :major_thirteenth, expected: :minor_third },
        { other: :augmented_thirteenth, expected: :major_third }
      ]
    end

    context "when current is minor_seventh" do
      let(:interval) { described_class.minor_seventh }

      include_examples :adds_intervals, [
        { other: :perfect_unison, expected: :minor_seventh },
        # { other: :minor_second, expected: nil },
        { other: :major_second, expected: :perfect_unison },
        # { other: :augmented_second, expected: nil },
        # { other: :diminished_third, expected: nil },
        { other: :minor_third, expected: :minor_second },
        { other: :major_third, expected: :major_second },
        { other: :augmented_third, expected: :augmented_second },
        { other: :diminished_fourth, expected: :diminished_third },
        { other: :perfect_fourth, expected: :minor_third },
        { other: :augmented_fourth, expected: :major_third },
        { other: :diminished_fifth, expected: :diminished_fourth },
        { other: :perfect_fifth, expected: :perfect_fourth },
        { other: :augmented_fifth, expected: :augmented_fourth },
        # { other: :diminished_sixth, expected: nil },
        { other: :minor_sixth, expected: :diminished_fifth },
        { other: :major_sixth, expected: :perfect_fifth },
        { other: :augmented_sixth, expected: :augmented_fifth },
        { other: :diminished_seventh, expected: :diminished_sixth },
        { other: :minor_seventh, expected: :minor_sixth },
        { other: :major_seventh, expected: :major_sixth },
        { other: :perfect_octave, expected: :minor_seventh },
        # { other: :minor_ninth, expected: nil },
        { other: :major_ninth, expected: :perfect_unison },
        # { other: :augmented_ninth, expected: nil },
        { other: :diminished_eleventh, expected: :diminished_third },
        { other: :perfect_eleventh, expected: :minor_third },
        { other: :augmented_eleventh, expected: :major_third },
        # { other: :diminished_thirteenth, expected: nil },
        { other: :minor_thirteenth, expected: :diminished_fifth },
        { other: :major_thirteenth, expected: :perfect_fifth },
        { other: :augmented_thirteenth, expected: :augmented_fifth }
      ]
    end
  end

  describe "#-" do
    subject(:sum) { interval - other }

    shared_examples :subtracts_intervals do |cases|
      cases.each do |params|
        context "and other is #{params[:other]}" do
          let(:other) { described_class.new(params[:other]) }

          let(:expected) { described_class.new(params[:expected]) }

          it "returns #{params[:expected]}" do
            expect(sum).to eq(expected)
          end
        end
      end
    end

    context "when current is perfect_unison" do
      let(:interval) { described_class.perfect_unison }

      include_examples :subtracts_intervals, [
        { other: :perfect_unison, expected: :perfect_unison },
        { other: :minor_second, expected: :major_seventh },
        { other: :major_second, expected: :minor_seventh },
        { other: :augmented_second, expected: :diminished_seventh },
        { other: :diminished_third, expected: :augmented_sixth },
        { other: :minor_third, expected: :major_sixth },
        { other: :major_third, expected: :minor_sixth },
        { other: :augmented_third, expected: :diminished_sixth },
        { other: :diminished_fourth, expected: :augmented_fifth },
        { other: :perfect_fourth, expected: :perfect_fifth },
        { other: :augmented_fourth, expected: :diminished_fifth },
        { other: :diminished_fifth, expected: :augmented_fourth },
        { other: :perfect_fifth, expected: :perfect_fourth },
        { other: :augmented_fifth, expected: :diminished_fourth },
        { other: :diminished_sixth, expected: :augmented_third },
        { other: :minor_sixth, expected: :major_third },
        { other: :major_sixth, expected: :minor_third },
        { other: :augmented_sixth, expected: :diminished_third },
        { other: :diminished_seventh, expected: :augmented_second },
        { other: :minor_seventh, expected: :major_second },
        { other: :major_seventh, expected: :minor_second },
        { other: :perfect_octave, expected: :perfect_unison },
        { other: :minor_ninth, expected: :major_seventh },
        { other: :major_ninth, expected: :minor_seventh },
        { other: :augmented_ninth, expected: :diminished_seventh },
        { other: :diminished_eleventh, expected: :augmented_fifth },
        { other: :perfect_eleventh, expected: :perfect_fifth },
        { other: :augmented_eleventh, expected: :diminished_fifth },
        { other: :diminished_thirteenth, expected: :augmented_third },
        { other: :minor_thirteenth, expected: :major_third },
        { other: :major_thirteenth, expected: :minor_third },
        { other: :augmented_thirteenth, expected: :diminished_third }
      ]
    end

    context "when current is minor_second" do
      let(:interval) { described_class.minor_second }

      include_examples :subtracts_intervals, [
        { other: :perfect_unison, expected: :minor_second },
        { other: :minor_second, expected: :perfect_unison },
        # { other: :major_second, expected: nil },
        # { other: :augmented_second, expected: nil },
        { other: :diminished_third, expected: :major_seventh },
        { other: :minor_third, expected: :minor_seventh },
        { other: :major_third, expected: :diminished_seventh },
        # { other: :augmented_third, expected: nil },
        { other: :diminished_fourth, expected: :major_sixth },
        { other: :perfect_fourth, expected: :minor_sixth },
        { other: :augmented_fourth, expected: :diminished_sixth },
        { other: :diminished_fifth, expected: :perfect_fifth },
        { other: :perfect_fifth, expected: :diminished_fifth },
        # { other: :augmented_fifth, expected: nil },
        { other: :minor_sixth, expected: :perfect_fourth },
        { other: :major_sixth, expected: :diminished_fourth },
        # { other: :augmented_sixth, expected: nil },
        { other: :diminished_seventh, expected: :major_third },
        { other: :minor_seventh, expected: :minor_third },
        { other: :major_seventh, expected: :diminished_third },
        { other: :perfect_octave, expected: :minor_second },
        { other: :minor_ninth, expected: :perfect_unison },
        # { other: :major_ninth, expected: nil },
        # { other: :augmented_ninth, expected: nil },
        { other: :diminished_eleventh, expected: :major_sixth },
        { other: :perfect_eleventh, expected: :minor_sixth },
        { other: :augmented_eleventh, expected: :diminished_sixth },
        { other: :diminished_thirteenth, expected: :augmented_fourth },
        { other: :minor_thirteenth, expected: :perfect_fourth },
        { other: :major_thirteenth, expected: :diminished_fourth }
        # { other: :augmented_thirteenth, expected: nil },
      ]
    end

    context "when current is major_third" do
      let(:interval) { described_class.major_third }

      include_examples :subtracts_intervals, [
        { other: :perfect_unison, expected: :major_third },
        { other: :minor_second, expected: :augmented_second },
        { other: :major_second, expected: :major_second },
        { other: :augmented_second, expected: :minor_second },
        # { other: :diminished_third, expected: nil },
        # { other: :minor_third, expected: nil },
        { other: :major_third, expected: :perfect_unison },
        # { other: :augmented_third, expected: nil },
        # { other: :diminished_fourth, expected: nil },
        { other: :perfect_fourth, expected: :major_seventh },
        { other: :augmented_fourth, expected: :minor_seventh },
        { other: :diminished_fifth, expected: :augmented_sixth },
        { other: :perfect_fifth, expected: :major_sixth },
        { other: :augmented_fifth, expected: :minor_sixth },
        # { other: :diminished_sixth, expected: nil },
        { other: :minor_sixth, expected: :augmented_fifth },
        { other: :major_sixth, expected: :perfect_fifth },
        { other: :augmented_sixth, expected: :diminished_fifth },
        # { other: :diminished_seventh, expected: nil },
        { other: :minor_seventh, expected: :augmented_fourth },
        { other: :major_seventh, expected: :perfect_fourth },
        { other: :perfect_octave, expected: :major_third },
        { other: :minor_ninth, expected: :augmented_second },
        { other: :major_ninth, expected: :major_second },
        { other: :augmented_ninth, expected: :minor_second },
        # { other: :diminished_eleventh, expected: nil },
        { other: :perfect_eleventh, expected: :major_seventh },
        { other: :augmented_eleventh, expected: :minor_seventh },
        # { other: :diminished_thirteenth, expected: nil },
        { other: :minor_thirteenth, expected: :augmented_fifth },
        { other: :major_thirteenth, expected: :perfect_fifth },
        { other: :augmented_thirteenth, expected: :diminished_fifth }
      ]
    end

    context "when current is perfect_fourth" do
      let(:interval) { described_class.perfect_fourth }

      include_examples :subtracts_intervals, [
        { other: :perfect_unison, expected: :perfect_fourth },
        { other: :minor_second, expected: :major_third },
        { other: :major_second, expected: :minor_third },
        { other: :augmented_second, expected: :diminished_third },
        { other: :diminished_third, expected: :augmented_second },
        { other: :minor_third, expected: :major_second },
        { other: :major_third, expected: :minor_second },
        # { other: :augmented_third, expected: nil },
        # { other: :diminished_fourth, expected: nil },
        { other: :perfect_fourth, expected: :perfect_unison },
        # { other: :augmented_fourth, expected: nil },
        { other: :diminished_fifth, expected: :major_seventh },
        { other: :perfect_fifth, expected: :minor_seventh },
        { other: :augmented_fifth, expected: :diminished_seventh },
        { other: :diminished_sixth, expected: :augmented_sixth },
        { other: :minor_sixth, expected: :major_sixth },
        { other: :major_sixth, expected: :minor_sixth },
        { other: :augmented_sixth, expected: :diminished_sixth },
        { other: :diminished_seventh, expected: :augmented_fifth },
        { other: :minor_seventh, expected: :perfect_fifth },
        { other: :major_seventh, expected: :diminished_fifth },
        { other: :perfect_octave, expected: :perfect_fourth },
        { other: :minor_ninth, expected: :major_third },
        { other: :major_ninth, expected: :minor_third },
        { other: :augmented_ninth, expected: :diminished_third },
        { other: :perfect_eleventh, expected: :perfect_unison },
        # { other: :diminished_eleventh, expected: nil },
        # { other: :augmented_eleventh, expected: nil },
        { other: :diminished_thirteenth, expected: :augmented_sixth },
        { other: :minor_thirteenth, expected: :major_sixth },
        { other: :major_thirteenth, expected: :minor_sixth },
        { other: :augmented_thirteenth, expected: :diminished_sixth }
      ]
    end

    context "when current is diminished_fifth" do
      let(:interval) { described_class.diminished_fifth }

      include_examples :subtracts_intervals, [
        { other: :perfect_unison, expected: :diminished_fifth },
        { other: :minor_second, expected: :perfect_fourth },
        { other: :major_second, expected: :diminished_fourth },
        # { other: :augmented_second, expected: nil },
        { other: :diminished_third, expected: :major_third },
        { other: :minor_third, expected: :minor_third },
        { other: :major_third, expected: :diminished_third },
        # { other: :augmented_third, expected: nil },
        { other: :diminished_fourth, expected: :major_second },
        { other: :perfect_fourth, expected: :minor_second },
        # { other: :augmented_fourth, expected: nil },
        { other: :diminished_fifth, expected: :perfect_unison },
        # { other: :perfect_fifth, expected: nil },
        # { other: :augmented_fifth, expected: nil },
        { other: :diminished_sixth, expected: :major_seventh },
        { other: :minor_sixth, expected: :minor_seventh },
        { other: :major_sixth, expected: :diminished_seventh },
        # { other: :augmented_sixth, expected: nil },
        { other: :diminished_seventh, expected: :major_sixth },
        { other: :minor_seventh, expected: :minor_sixth },
        { other: :major_seventh, expected: :diminished_sixth },
        { other: :perfect_octave, expected: :diminished_fifth },
        { other: :minor_ninth, expected: :perfect_fourth },
        { other: :major_ninth, expected: :diminished_fourth },
        # { other: :augmented_ninth, expected: nil },
        { other: :diminished_eleventh, expected: :major_second },
        { other: :perfect_eleventh, expected: :minor_second },
        # { other: :augmented_eleventh, expected: nil },
        { other: :diminished_thirteenth, expected: :major_seventh },
        { other: :minor_thirteenth, expected: :minor_seventh },
        { other: :major_thirteenth, expected: :diminished_seventh }
        # { other: :augmented_thirteenth, expected: nil },
      ]
    end

    context "when current is minor_seventh" do
      let(:interval) { described_class.minor_seventh }

      include_examples :subtracts_intervals, [
        { other: :perfect_unison, expected: :minor_seventh },
        { other: :minor_second, expected: :major_sixth },
        { other: :major_second, expected: :minor_sixth },
        { other: :augmented_second, expected: :diminished_sixth },
        { other: :diminished_third, expected: :augmented_fifth },
        { other: :minor_third, expected: :perfect_fifth },
        { other: :major_third, expected: :diminished_fifth },
        # { other: :augmented_third, expected: nil },
        { other: :diminished_fourth, expected: :augmented_fourth },
        { other: :perfect_fourth, expected: :perfect_fourth },
        { other: :augmented_fourth, expected: :diminished_fourth },
        { other: :diminished_fifth, expected: :major_third },
        { other: :perfect_fifth, expected: :minor_third },
        { other: :augmented_fifth, expected: :diminished_third },
        { other: :diminished_sixth, expected: :augmented_second },
        { other: :minor_sixth, expected: :major_second },
        { other: :major_sixth, expected: :minor_second },
        # { other: :augmented_sixth, expected: nil },
        # { other: :diminished_seventh, expected: nil },
        { other: :minor_seventh, expected: :perfect_unison },
        # { other: :major_seventh, expected: nil },
        { other: :perfect_octave, expected: :minor_seventh },
        { other: :minor_ninth, expected: :major_sixth },
        { other: :major_ninth, expected: :minor_sixth },
        { other: :augmented_ninth, expected: :diminished_sixth },
        { other: :diminished_eleventh, expected: :augmented_fourth },
        { other: :perfect_eleventh, expected: :perfect_fourth },
        { other: :augmented_eleventh, expected: :diminished_fourth },
        { other: :diminished_thirteenth, expected: :augmented_second },
        { other: :minor_thirteenth, expected: :major_second },
        { other: :major_thirteenth, expected: :minor_second }
        # { other: :augmented_thirteenth, expected: nil },
      ]
    end
  end
end
