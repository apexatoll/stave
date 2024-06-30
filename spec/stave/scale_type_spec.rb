RSpec.describe Stave::ScaleType do
  describe ":major" do
    subject(:scale_type) { described_class.major }

    describe "#steps" do
      subject(:steps) { scale_type.steps }

      let(:sizes) { steps.map(&:size) }

      it "sets the expected semitone steps" do
        expect(sizes).to eq([2, 2, 1, 2, 2, 2, 1])
      end
    end

    describe "#offsets" do
      subject(:offsets) { scale_type.offsets }

      it "sets the offsets from the tonic" do
        expect(offsets).to eq([0, 2, 4, 5, 7, 9, 11, 12])
      end
    end
  end

  describe ":minor" do
    subject(:scale_type) { described_class.minor }

    describe "#steps" do
      subject(:steps) { scale_type.steps }

      let(:sizes) { steps.map(&:size) }

      it "sets the expected semitone steps" do
        expect(sizes).to eq([2, 1, 2, 2, 1, 2, 2])
      end
    end

    describe "#offsets" do
      subject(:offsets) { scale_type.offsets }

      it "sets the offsets from the tonic" do
        expect(offsets).to eq([0, 2, 3, 5, 7, 8, 10, 12])
      end
    end
  end
end
