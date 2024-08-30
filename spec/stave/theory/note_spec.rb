RSpec.describe Stave::Theory::Note do
  describe Stave::Theory::Note::PitchClass do
    describe ":c" do
      subject(:pitch_class) { described_class.c }

      it "sets the expected attributes" do
        expect(pitch_class).to have_attributes(to_s: "C", to_i: 0)
      end
    end

    describe ":d" do
      subject(:pitch_class) { described_class.d }

      it "sets the expected attributes" do
        expect(pitch_class).to have_attributes(to_s: "D", to_i: 2)
      end
    end

    describe ":e" do
      subject(:pitch_class) { described_class.e }

      it "sets the expected attributes" do
        expect(pitch_class).to have_attributes(to_s: "E", to_i: 4)
      end
    end

    describe ":f" do
      subject(:pitch_class) { described_class.f }

      it "sets the expected attributes" do
        expect(pitch_class).to have_attributes(to_s: "F", to_i: 5)
      end
    end

    describe ":g" do
      subject(:pitch_class) { described_class.g }

      it "sets the expected attributes" do
        expect(pitch_class).to have_attributes(to_s: "G", to_i: 7)
      end
    end

    describe ":a" do
      subject(:pitch_class) { described_class.a }

      it "sets the expected attributes" do
        expect(pitch_class).to have_attributes(to_s: "A", to_i: 9)
      end
    end

    describe ":b" do
      subject(:pitch_class) { described_class.b }

      it "sets the expected attributes" do
        expect(pitch_class).to have_attributes(to_s: "B", to_i: 11)
      end
    end
  end
end
