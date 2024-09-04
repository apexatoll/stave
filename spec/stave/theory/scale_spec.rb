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

  describe "#sevenths" do
    subject(:sevenths) { scale.sevenths }

    each_case(:scale_sevenths) do |type_variant, cases|
      describe ":#{type_variant}" do
        let(:type) { Stave::Theory::ScaleType.new(type_variant) }

        cases.each do |root_variant, expected|
          describe root_variant.to_s do
            let(:root) { Stave::Theory::Note.new(root_variant) }

            it "returns the expected triads" do
              expect(sevenths.map(&:to_s)).to eq(expected)
            end
          end
        end
      end
    end
  end

  describe "#mode" do
    subject(:mode) { scale.mode(position) }

    let(:root) { Stave::Theory::Note.e_natural }

    let(:position) { 3 }

    context "when scale type does not define any modes" do
      let(:type) { Stave::Theory::ScaleType.minor }

      it "returns nil" do
        expect(mode).to be_nil
      end
    end

    context "when scale type defines any modes" do
      let(:type) { Stave::Theory::ScaleType.major }

      it "returns the expected mode" do
        expect(mode.type).to have_attributes(variant: :phrygian)
      end
    end
  end
end
