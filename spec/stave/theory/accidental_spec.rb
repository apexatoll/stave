RSpec.describe Stave::Theory::Accidental do
  describe ":double_flat" do
    subject(:accidental) { described_class.double_flat }

    it "sets the expected attributes" do
      expect(accidental).to have_attributes(
        transform: -2,
        symbol: "♭♭",
        flat?: true,
        natural?: false,
        sharp?: false
      )
    end
  end

  describe ":flat" do
    subject(:accidental) { described_class.flat }

    it "sets the expected attributes" do
      expect(accidental).to have_attributes(
        transform: -1,
        symbol: "♭",
        flat?: true,
        natural?: false,
        sharp?: false
      )
    end
  end

  describe ":natural" do
    subject(:accidental) { described_class.natural }

    it "sets the expected attributes" do
      expect(accidental).to have_attributes(
        transform: 0,
        symbol: "",
        flat?: false,
        natural?: true,
        sharp?: false
      )
    end
  end

  describe ":sharp" do
    subject(:accidental) { described_class.sharp }

    it "sets the expected attributes" do
      expect(accidental).to have_attributes(
        transform: 1,
        symbol: "♯",
        flat?: false,
        natural?: false,
        sharp?: true
      )
    end
  end

  describe ":double_sharp" do
    subject(:accidental) { described_class.double_sharp }

    it "sets the expected attributes" do
      expect(accidental).to have_attributes(
        transform: 2,
        symbol: "♯♯",
        flat?: false,
        natural?: false,
        sharp?: true
      )
    end
  end
end
