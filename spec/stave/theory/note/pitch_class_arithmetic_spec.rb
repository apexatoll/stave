RSpec.describe Stave::Theory::Note::PitchClass do
  shared_examples :pitch_class_addition do |cases|
    cases.each do |options|
      context "when #{options[:other]}" do
        it "returns #{options[:pitch_class]}" do
          expect(pitch_class + options[:other]).to eq(options[:pitch_class])
        end
      end
    end
  end

  shared_examples :pitch_class_subtraction do |cases|
    cases.each do |options|
      context "when #{options[:other]}" do
        it "returns #{options[:pitch_class]}" do
          expect(pitch_class - options[:other]).to eq(options[:pitch_class])
        end
      end
    end
  end

  describe "#+" do
    describe "C" do
      let(:pitch_class) { described_class.c }

      include_examples :pitch_class_addition, [
        { other: 1, pitch_class: described_class.d },
        { other: 2, pitch_class: described_class.e },
        { other: 3, pitch_class: described_class.f },
        { other: 4, pitch_class: described_class.g },
        { other: 5, pitch_class: described_class.a },
        { other: 6, pitch_class: described_class.b },
        { other: 7, pitch_class: described_class.c },
        { other: 8, pitch_class: described_class.d }
      ]
    end

    describe "D" do
      let(:pitch_class) { described_class.d }

      include_examples :pitch_class_addition, [
        { other: 1, pitch_class: described_class.e },
        { other: 2, pitch_class: described_class.f },
        { other: 3, pitch_class: described_class.g },
        { other: 4, pitch_class: described_class.a },
        { other: 5, pitch_class: described_class.b },
        { other: 6, pitch_class: described_class.c },
        { other: 7, pitch_class: described_class.d },
        { other: 8, pitch_class: described_class.e }
      ]
    end

    describe "E" do
      let(:pitch_class) { described_class.e }

      include_examples :pitch_class_addition, [
        { other: 1, pitch_class: described_class.f },
        { other: 2, pitch_class: described_class.g },
        { other: 3, pitch_class: described_class.a },
        { other: 4, pitch_class: described_class.b },
        { other: 5, pitch_class: described_class.c },
        { other: 6, pitch_class: described_class.d },
        { other: 7, pitch_class: described_class.e },
        { other: 8, pitch_class: described_class.f }
      ]
    end

    describe "F" do
      let(:pitch_class) { described_class.f }

      include_examples :pitch_class_addition, [
        { other: 1, pitch_class: described_class.g },
        { other: 2, pitch_class: described_class.a },
        { other: 3, pitch_class: described_class.b },
        { other: 4, pitch_class: described_class.c },
        { other: 5, pitch_class: described_class.d },
        { other: 6, pitch_class: described_class.e },
        { other: 7, pitch_class: described_class.f },
        { other: 8, pitch_class: described_class.g }
      ]
    end

    describe "G" do
      let(:pitch_class) { described_class.g }

      include_examples :pitch_class_addition, [
        { other: 1, pitch_class: described_class.a },
        { other: 2, pitch_class: described_class.b },
        { other: 3, pitch_class: described_class.c },
        { other: 4, pitch_class: described_class.d },
        { other: 5, pitch_class: described_class.e },
        { other: 6, pitch_class: described_class.f },
        { other: 7, pitch_class: described_class.g },
        { other: 8, pitch_class: described_class.a }
      ]
    end

    describe "A" do
      let(:pitch_class) { described_class.a }

      include_examples :pitch_class_addition, [
        { other: 1, pitch_class: described_class.b },
        { other: 2, pitch_class: described_class.c },
        { other: 3, pitch_class: described_class.d },
        { other: 4, pitch_class: described_class.e },
        { other: 5, pitch_class: described_class.f },
        { other: 6, pitch_class: described_class.g },
        { other: 7, pitch_class: described_class.a },
        { other: 8, pitch_class: described_class.b }
      ]
    end

    describe "B" do
      let(:pitch_class) { described_class.b }

      include_examples :pitch_class_addition, [
        { other: 1, pitch_class: described_class.c },
        { other: 2, pitch_class: described_class.d },
        { other: 3, pitch_class: described_class.e },
        { other: 4, pitch_class: described_class.f },
        { other: 5, pitch_class: described_class.g },
        { other: 6, pitch_class: described_class.a },
        { other: 7, pitch_class: described_class.b },
        { other: 8, pitch_class: described_class.c }
      ]
    end
  end

  describe "#-" do
    describe "C" do
      let(:pitch_class) { described_class.c }

      include_examples :pitch_class_subtraction, [
        { other: 1, pitch_class: described_class.b },
        { other: 2, pitch_class: described_class.a },
        { other: 3, pitch_class: described_class.g },
        { other: 4, pitch_class: described_class.f },
        { other: 5, pitch_class: described_class.e },
        { other: 6, pitch_class: described_class.d },
        { other: 7, pitch_class: described_class.c },
        { other: 8, pitch_class: described_class.b }
      ]
    end

    describe "D" do
      let(:pitch_class) { described_class.d }

      include_examples :pitch_class_subtraction, [
        { other: 1, pitch_class: described_class.c },
        { other: 2, pitch_class: described_class.b },
        { other: 3, pitch_class: described_class.a },
        { other: 4, pitch_class: described_class.g },
        { other: 5, pitch_class: described_class.f },
        { other: 6, pitch_class: described_class.e },
        { other: 7, pitch_class: described_class.d },
        { other: 8, pitch_class: described_class.c }
      ]
    end

    describe "E" do
      let(:pitch_class) { described_class.e }

      include_examples :pitch_class_subtraction, [
        { other: 1, pitch_class: described_class.d },
        { other: 2, pitch_class: described_class.c },
        { other: 3, pitch_class: described_class.b },
        { other: 4, pitch_class: described_class.a },
        { other: 5, pitch_class: described_class.g },
        { other: 6, pitch_class: described_class.f },
        { other: 7, pitch_class: described_class.e },
        { other: 8, pitch_class: described_class.d }
      ]
    end

    describe "F" do
      let(:pitch_class) { described_class.f }

      include_examples :pitch_class_subtraction, [
        { other: 1, pitch_class: described_class.e },
        { other: 2, pitch_class: described_class.d },
        { other: 3, pitch_class: described_class.c },
        { other: 4, pitch_class: described_class.b },
        { other: 5, pitch_class: described_class.a },
        { other: 6, pitch_class: described_class.g },
        { other: 7, pitch_class: described_class.f },
        { other: 8, pitch_class: described_class.e }
      ]
    end

    describe "G" do
      let(:pitch_class) { described_class.g }

      include_examples :pitch_class_subtraction, [
        { other: 1, pitch_class: described_class.f },
        { other: 2, pitch_class: described_class.e },
        { other: 3, pitch_class: described_class.d },
        { other: 4, pitch_class: described_class.c },
        { other: 5, pitch_class: described_class.b },
        { other: 6, pitch_class: described_class.a },
        { other: 7, pitch_class: described_class.g },
        { other: 8, pitch_class: described_class.f }
      ]
    end

    describe "A" do
      let(:pitch_class) { described_class.a }

      include_examples :pitch_class_subtraction, [
        { other: 1, pitch_class: described_class.g },
        { other: 2, pitch_class: described_class.f },
        { other: 3, pitch_class: described_class.e },
        { other: 4, pitch_class: described_class.d },
        { other: 5, pitch_class: described_class.c },
        { other: 6, pitch_class: described_class.b },
        { other: 7, pitch_class: described_class.a },
        { other: 8, pitch_class: described_class.g }
      ]
    end

    describe "B" do
      let(:pitch_class) { described_class.b }

      include_examples :pitch_class_subtraction, [
        { other: 1, pitch_class: described_class.a },
        { other: 2, pitch_class: described_class.g },
        { other: 3, pitch_class: described_class.f },
        { other: 4, pitch_class: described_class.e },
        { other: 5, pitch_class: described_class.d },
        { other: 6, pitch_class: described_class.c },
        { other: 7, pitch_class: described_class.b },
        { other: 8, pitch_class: described_class.a }
      ]
    end
  end
end
