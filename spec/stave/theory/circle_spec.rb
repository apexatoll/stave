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
end
