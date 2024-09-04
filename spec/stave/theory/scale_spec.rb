RSpec.describe Stave::Theory::Scale do
  subject(:scale) { described_class.new(root:, type:) }

  describe "#notes" do
    subject(:notes) { scale.notes }

    each_case(:scale_notes) do |type_variant, cases|
      describe ":#{type_variant}" do
        let(:type) { Stave::Theory::ScaleType.new(type_variant) }

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

  describe "#triads" do
    subject(:triads) { scale.triads }

    each_case(:scale_triads) do |type_variant, cases|
      describe ":#{type_variant}" do
        let(:type) { Stave::Theory::ScaleType.new(type_variant) }

        cases.each do |root_variant, expected|
          describe root_variant.to_s do
            let(:root) { Stave::Theory::Note.new(root_variant) }

            it "returns the expected triads" do
              expect(triads.map(&:to_s)).to eq(expected)
            end
          end
        end
      end
    end
  end
end
