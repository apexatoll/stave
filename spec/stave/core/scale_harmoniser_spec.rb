RSpec.describe Stave::Core::ScaleHarmoniser do
  subject(:scale_harmoniser) do
    described_class.new(scale_type:, chord_set:)
  end

  describe "#harmonise!" do
    subject(:chord_types) { scale_harmoniser.harmonise! }

    describe ":major_scale" do
      let(:scale_type) { Stave::Theory::ScaleType.major }

      describe ":triads" do
        let(:chord_set) { Stave::Theory::ChordType::Set.triad }

        it "returns the expected chord types" do
          expect(chord_types).to eq(
            [
              Stave::Theory::ChordType.major_triad,
              Stave::Theory::ChordType.minor_triad,
              Stave::Theory::ChordType.minor_triad,
              Stave::Theory::ChordType.major_triad,
              Stave::Theory::ChordType.major_triad,
              Stave::Theory::ChordType.minor_triad,
              Stave::Theory::ChordType.diminished_triad
            ]
          )
        end
      end
    end
  end
end
