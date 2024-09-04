RSpec.describe Stave::Theory::Circle do
  subject(:circle) { described_class.new(type:, root:) }

  describe "#notes" do
    subject(:notes) { circle.notes }

    each_case(:circle_notes) do |circle_type_variant, cases|
      describe ":#{circle_type_variant}" do
        let(:type) { Stave::Theory::CircleType.new(circle_type_variant) }

        cases.each do |root_variant, note_variants|
          context "when root is #{root_variant}" do
            let(:root) { Stave::Theory::Note.new(root_variant) }

            let(:expected) do
              note_variants.map { |variant| Stave::Theory::Note.new(variant) }
            end

            it "returns the expected notes" do
              expect(notes).to eq(expected)
            end
          end
        end
      end
    end
  end

  describe "#key_signatures" do
    subject(:key_signatures) { circle.key_signatures }

    let(:root) { Stave::Theory::Note.c_natural }

    describe ":fourths" do
      let(:type) { Stave::Theory::CircleType.fourths }

      it "returns the expected key signatures" do
        expect(key_signatures).to eq(
          [
            Stave::Theory::KeySignature.natural,
            Stave::Theory::KeySignature.one_flat,
            Stave::Theory::KeySignature.two_flats,
            Stave::Theory::KeySignature.three_flats,
            Stave::Theory::KeySignature.four_flats,
            Stave::Theory::KeySignature.five_flats,
            Stave::Theory::KeySignature.six_flats,
            Stave::Theory::KeySignature.seven_flats
          ]
        )
      end
    end

    describe ":fifths" do
      let(:type) { Stave::Theory::CircleType.fifths }

      it "returns the expected key signatures" do
        expect(key_signatures).to eq(
          [
            Stave::Theory::KeySignature.natural,
            Stave::Theory::KeySignature.one_sharp,
            Stave::Theory::KeySignature.two_sharps,
            Stave::Theory::KeySignature.three_sharps,
            Stave::Theory::KeySignature.four_sharps,
            Stave::Theory::KeySignature.five_sharps,
            Stave::Theory::KeySignature.six_sharps,
            Stave::Theory::KeySignature.seven_sharps
          ]
        )
      end
    end
  end
end
