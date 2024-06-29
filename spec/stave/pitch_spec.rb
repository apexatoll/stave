RSpec.describe Stave::Pitch do
  describe ":a" do
    let(:pitch) { described_class.a }

    it "has the expected ordering" do
      expect(pitch.ordering).to eq(0)
    end

    describe "#+" do
      subject(:new_pitch) { pitch + offset }

      context "when offset is not wrapped" do
        let(:offset) { 2 }

        it "returns a Pitch object" do
          expect(new_pitch).to be_a(described_class)
        end

        it "is the expected pitch" do
          expect(new_pitch.name).to eq(:c)
        end
      end

      context "when offset is wrapped" do
        let(:offset) { 8 }

        it "returns a Pitch object" do
          expect(new_pitch).to be_a(described_class)
        end

        it "is the expected pitch" do
          expect(new_pitch.name).to eq(:b)
        end
      end
    end

    describe "#-" do
      subject(:new_pitch) { pitch - offset }

      let(:offset) { 2 }

      it "returns a Pitch object" do
        expect(new_pitch).to be_a(described_class)
      end

      it "is the expected pitch" do
        expect(new_pitch.name).to eq(:f)
      end
    end
  end

  describe ":b" do
    let(:pitch) { described_class.b }

    it "has the expected ordering" do
      expect(pitch.ordering).to eq(1)
    end

    describe "#+" do
      subject(:new_pitch) { pitch + offset }

      context "when offset is not wrapped" do
        let(:offset) { 2 }

        it "returns a Pitch object" do
          expect(new_pitch).to be_a(described_class)
        end

        it "is the expected pitch" do
          expect(new_pitch.name).to eq(:d)
        end
      end

      context "when offset is wrapped" do
        let(:offset) { 8 }

        it "returns a Pitch object" do
          expect(new_pitch).to be_a(described_class)
        end

        it "is the expected pitch" do
          expect(new_pitch.name).to eq(:c)
        end
      end
    end

    describe "#-" do
      subject(:new_pitch) { pitch - offset }

      context "when offset is not wrapped" do
        let(:offset) { 1 }

        it "returns a Pitch object" do
          expect(new_pitch).to be_a(described_class)
        end

        it "is the expected pitch" do
          expect(new_pitch.name).to eq(:a)
        end
      end

      context "when offset is wrapped" do
        let(:offset) { 9 }

        it "returns a Pitch object" do
          expect(new_pitch).to be_a(described_class)
        end

        it "is the expected pitch" do
          expect(new_pitch.name).to eq(:g)
        end
      end
    end
  end

  describe ":c" do
    let(:pitch) { described_class.c }

    it "has the expected ordering" do
      expect(pitch.ordering).to eq(2)
    end

    describe "#+" do
      subject(:new_pitch) { pitch + offset }

      context "when offset is not wrapped" do
        let(:offset) { 2 }

        it "returns a Pitch object" do
          expect(new_pitch).to be_a(described_class)
        end

        it "is the expected pitch" do
          expect(new_pitch.name).to eq(:e)
        end
      end

      context "when offset is wrapped" do
        let(:offset) { 8 }

        it "returns a Pitch object" do
          expect(new_pitch).to be_a(described_class)
        end

        it "is the expected pitch" do
          expect(new_pitch.name).to eq(:d)
        end
      end
    end

    describe "#-" do
      subject(:new_pitch) { pitch - offset }

      context "when offset is not wrapped" do
        let(:offset) { 1 }

        it "returns a Pitch object" do
          expect(new_pitch).to be_a(described_class)
        end

        it "is the expected pitch" do
          expect(new_pitch.name).to eq(:b)
        end
      end

      context "when offset is wrapped" do
        let(:offset) { 9 }

        it "returns a Pitch object" do
          expect(new_pitch).to be_a(described_class)
        end

        it "is the expected pitch" do
          expect(new_pitch.name).to eq(:a)
        end
      end
    end
  end

  describe ":d" do
    let(:pitch) { described_class.d }

    it "has the expected ordering" do
      expect(pitch.ordering).to eq(3)
    end

    describe "#+" do
      subject(:new_pitch) { pitch + offset }

      context "when offset is not wrapped" do
        let(:offset) { 2 }

        it "returns a Pitch object" do
          expect(new_pitch).to be_a(described_class)
        end

        it "is the expected pitch" do
          expect(new_pitch.name).to eq(:f)
        end
      end

      context "when offset is wrapped" do
        let(:offset) { 8 }

        it "returns a Pitch object" do
          expect(new_pitch).to be_a(described_class)
        end

        it "is the expected pitch" do
          expect(new_pitch.name).to eq(:e)
        end
      end
    end

    describe "#-" do
      subject(:new_pitch) { pitch - offset }

      context "when offset is not wrapped" do
        let(:offset) { 1 }

        it "returns a Pitch object" do
          expect(new_pitch).to be_a(described_class)
        end

        it "is the expected pitch" do
          expect(new_pitch.name).to eq(:c)
        end
      end

      context "when offset is wrapped" do
        let(:offset) { 9 }

        it "returns a Pitch object" do
          expect(new_pitch).to be_a(described_class)
        end

        it "is the expected pitch" do
          expect(new_pitch.name).to eq(:b)
        end
      end
    end
  end

  describe ":e" do
    let(:pitch) { described_class.e }

    it "has the expected ordering" do
      expect(pitch.ordering).to eq(4)
    end

    describe "#+" do
      subject(:new_pitch) { pitch + offset }

      context "when offset is not wrapped" do
        let(:offset) { 2 }

        it "returns a Pitch object" do
          expect(new_pitch).to be_a(described_class)
        end

        it "is the expected pitch" do
          expect(new_pitch.name).to eq(:g)
        end
      end

      context "when offset is wrapped" do
        let(:offset) { 8 }

        it "returns a Pitch object" do
          expect(new_pitch).to be_a(described_class)
        end

        it "is the expected pitch" do
          expect(new_pitch.name).to eq(:f)
        end
      end
    end

    describe "#-" do
      subject(:new_pitch) { pitch - offset }

      context "when offset is not wrapped" do
        let(:offset) { 1 }

        it "returns a Pitch object" do
          expect(new_pitch).to be_a(described_class)
        end

        it "is the expected pitch" do
          expect(new_pitch.name).to eq(:d)
        end
      end

      context "when offset is wrapped" do
        let(:offset) { 9 }

        it "returns a Pitch object" do
          expect(new_pitch).to be_a(described_class)
        end

        it "is the expected pitch" do
          expect(new_pitch.name).to eq(:c)
        end
      end
    end
  end

  describe ":f" do
    let(:pitch) { described_class.f }

    it "has the expected ordering" do
      expect(pitch.ordering).to eq(5)
    end

    describe "#+" do
      subject(:new_pitch) { pitch + offset }

      context "when offset is not wrapped" do
        let(:offset) { 1 }

        it "returns a Pitch object" do
          expect(new_pitch).to be_a(described_class)
        end

        it "is the expected pitch" do
          expect(new_pitch.name).to eq(:g)
        end
      end

      context "when offset is wrapped" do
        let(:offset) { 8 }

        it "returns a Pitch object" do
          expect(new_pitch).to be_a(described_class)
        end

        it "is the expected pitch" do
          expect(new_pitch.name).to eq(:g)
        end
      end
    end

    describe "#-" do
      subject(:new_pitch) { pitch - offset }

      context "when offset is not wrapped" do
        let(:offset) { 1 }

        it "returns a Pitch object" do
          expect(new_pitch).to be_a(described_class)
        end

        it "is the expected pitch" do
          expect(new_pitch.name).to eq(:e)
        end
      end

      context "when offset is wrapped" do
        let(:offset) { 9 }

        it "returns a Pitch object" do
          expect(new_pitch).to be_a(described_class)
        end

        it "is the expected pitch" do
          expect(new_pitch.name).to eq(:d)
        end
      end
    end
  end

  describe ":g" do
    let(:pitch) { described_class.g }

    it "has the expected ordering" do
      expect(pitch.ordering).to eq(6)
    end

    describe "#+" do
      subject(:new_pitch) { pitch + offset }

      let(:offset) { 3 }

      it "returns a Pitch object" do
        expect(new_pitch).to be_a(described_class)
      end

      it "is the expected pitch" do
        expect(new_pitch.name).to eq(:c)
      end
    end

    describe "#-" do
      subject(:new_pitch) { pitch - offset }

      context "when offset is not wrapped" do
        let(:offset) { 1 }

        it "returns a Pitch object" do
          expect(new_pitch).to be_a(described_class)
        end

        it "is the expected pitch" do
          expect(new_pitch.name).to eq(:f)
        end
      end

      context "when offset is wrapped" do
        let(:offset) { 9 }

        it "returns a Pitch object" do
          expect(new_pitch).to be_a(described_class)
        end

        it "is the expected pitch" do
          expect(new_pitch.name).to eq(:e)
        end
      end
    end
  end

  describe ".order" do
    subject(:order) { described_class.order }

    let(:expected) { %i[a b c d e f g] }

    it "returns the expected order" do
      expect(order).to eq(expected)
    end
  end
end
