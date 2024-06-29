RSpec.describe Stave::Pitch do
  describe ":a" do
    let(:pitch) { described_class.a }

    it "has the expected ordering" do
      expect(pitch.ordering).to eq(0)
    end
  end

  describe ":b" do
    let(:pitch) { described_class.b }

    it "has the expected ordering" do
      expect(pitch.ordering).to eq(1)
    end
  end

  describe ":c" do
    let(:pitch) { described_class.c }

    it "has the expected ordering" do
      expect(pitch.ordering).to eq(2)
    end
  end

  describe ":d" do
    let(:pitch) { described_class.d }

    it "has the expected ordering" do
      expect(pitch.ordering).to eq(3)
    end
  end

  describe ":e" do
    let(:pitch) { described_class.e }

    it "has the expected ordering" do
      expect(pitch.ordering).to eq(4)
    end
  end

  describe ":f" do
    let(:pitch) { described_class.f }

    it "has the expected ordering" do
      expect(pitch.ordering).to eq(5)
    end
  end

  describe ":g" do
    let(:pitch) { described_class.g }

    it "has the expected ordering" do
      expect(pitch.ordering).to eq(6)
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
