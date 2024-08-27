RSpec.describe Stave::Core::Lookup do
  subject(:lookup) { lookup_class.new(variant) }

  let(:lookup_class) do
    Class.new(described_class) do
      variant :fido, species: :dog, age: 3
      variant :felix, species: :cat, age: 4
    end
  end

  describe "#initialize" do
    context "when variant is invalid" do
      let(:variant) { :tweetie }

      it "raises an error" do
        expect { lookup }.to raise_error(
          described_class::InvalidVariantError,
          "Variant :tweetie is invalid"
        )
      end
    end

    context "when variant valid" do
      let(:variant) { :fido }

      it "does not raise any errors" do
        expect { lookup }.not_to raise_error
      end

      it "sets the variant" do
        expect(lookup.variant).to eq(variant)
      end

      it "sets getters for each attribute" do
        expect(lookup).to have_attributes(species: :dog, age: 3)
      end
    end
  end
end
