RSpec.describe Stave::Theory::Accidental do
  describe ":double_flat" do
    subject(:accidental) { described_class.double_flat }

    it "sets the expected attributes" do
      expect(accidental).to have_attributes(transform: -2, to_s: "♭♭")
    end
  end

  describe ":flat" do
    subject(:accidental) { described_class.flat }

    it "sets the expected attributes" do
      expect(accidental).to have_attributes(transform: -1, to_s: "♭")
    end
  end

  describe ":natural" do
    subject(:accidental) { described_class.natural }

    it "sets the expected attributes" do
      expect(accidental).to have_attributes(transform: 0, to_s: "")
    end
  end

  describe ":sharp" do
    subject(:accidental) { described_class.sharp }

    it "sets the expected attributes" do
      expect(accidental).to have_attributes(transform: 1, to_s: "♯")
    end
  end

  describe ":double_sharp" do
    subject(:accidental) { described_class.double_sharp }

    it "sets the expected attributes" do
      expect(accidental).to have_attributes(transform: 2, to_s: "♯♯")
    end
  end
end
