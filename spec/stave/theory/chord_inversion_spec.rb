RSpec.describe Stave::Theory::ChordInversion do
  subject(:chord) { described_class.new(root:, type:) }

  describe "#notes" do
    subject(:notes) { chord.notes }

    each_case(:chord_inversion_notes) do |type_variant, cases|
      describe ":#{type_variant}" do
        let(:type) { Stave::Theory::ChordInversionType.new(type_variant) }

        cases.each do |root_variant, expected_variants|
          describe root_variant do
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

  describe "#symbol" do
    subject(:symbol) { chord.symbol }

    each_case(:chord_inversion_strings) do |type_variant, cases|
      describe ":#{type_variant}" do
        let(:type) { Stave::Theory::ChordInversionType.new(type_variant) }

        cases.each do |root_variant, expected_string|
          describe root_variant do
            let(:root) { Stave::Theory::Note.new(root_variant) }

            it "returns #{expected_string}" do
              expect(symbol).to eq(expected_string)
            end
          end
        end
      end
    end
  end
end
