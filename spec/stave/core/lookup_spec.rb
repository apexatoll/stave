RSpec.describe Stave::Core::Lookup do
  subject(:lookup) { lookup_class.new(variant) }

  let(:lookup_class) do
    Class.new(described_class) do
      variant :foo
      variant :bar
    end
  end

  describe "#initialize" do
    context "when provided variant is invalid" do
      let(:variant) { :invalid }

      it "raises an invalid variant error" do
        expect { lookup }.to raise_error(
          described_class::InvalidVariantError,
          "Invalid lookup variant: invalid"
        )
      end
    end

    context "when provided variant is valid" do
      let(:variant) { :foo }

      it "does not raise any errors" do
        expect { lookup }.not_to raise_error
      end

      it "sets the variant" do
        expect(lookup.variant).to eq(variant)
      end
    end
  end

  describe ".variants" do
    subject(:variants) { lookup_class.variants }

    it "returns the expected variants" do
      expect(variants).to contain_exactly(:foo, :bar)
    end
  end

  describe "getter methods" do
    it "sets getter class methods for each variant" do
      expect(lookup_class).to respond_to(:foo, :bar)
    end

    describe ".foo" do
      let(:lookup) { lookup_class.foo }

      it "returns the expected object" do
        expect(lookup).to be_a(lookup_class)
      end

      it "sets the variant" do
        expect(lookup.variant).to eq(:foo)
      end
    end

    describe ".bar" do
      let(:lookup) { lookup_class.bar }

      it "returns the expected object" do
        expect(lookup).to be_a(lookup_class)
      end

      it "sets the variant" do
        expect(lookup.variant).to eq(:bar)
      end
    end
  end
end
