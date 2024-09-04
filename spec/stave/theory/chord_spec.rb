RSpec.describe Stave::Theory::Chord do
  subject(:chord) { described_class.new(root:, type:) }

  describe "#notes" do
    subject(:notes) { chord.notes }

    each_case(:chord_notes) do |type_variant, cases|
      describe ":#{type_variant}" do
        let(:type) { Stave::Theory::ChordType.new(type_variant) }

        cases.each do |root_variant, expected_variants|
          describe root_variant.to_s do
            let(:root) { Stave::Theory::Note.new(root_variant) }

            let(:expected) do
              expected_variants.map do |variant|
                Stave::Theory::Note.new(variant)
              end
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
