RSpec.describe Stave::Core::Lookup do
  subject(:lookup) { lookup_class.new(name) }

  let(:lookup_class) do
    Class.new(described_class) do
      variant :foo
      variant :bar, value: :value
    end
  end

  describe "#initialize" do
    context "when provided variant is invalid" do
      let(:name) { :invalid }

      it "raises an invalid variant error" do
        expect { lookup }.to raise_error(
          described_class::InvalidVariantError,
          "Invalid lookup variant: invalid"
        )
      end
    end

    context "when provided variant is valid" do
      let(:name) { :foo }

      it "does not raise any errors" do
        expect { lookup }.not_to raise_error
      end

      it "sets the name" do
        expect(lookup.name).to eq(name)
      end
    end
  end

  describe "#value" do
    subject(:value) { lookup.value }

    context "when variant value is not specified" do
      let(:name) { :foo }

      it "returns the variant name" do
        expect(value).to eq(name)
      end
    end

    context "when variant value is specified" do
      let(:name) { :bar }

      it "returns the specified value" do
        expect(value).to eq(:value)
      end
    end
  end

  describe ".variant?" do
    context "when specified variant is not defined" do
      let(:name) { :invalid }

      it "returns false" do
        expect(lookup_class).not_to be_variant(name)
      end
    end

    context "when specified variant is defined" do
      let(:name) { :foo }

      it "returns true" do
        expect(lookup_class).to be_variant(name)
      end
    end
  end

  describe ".variants" do
    subject(:variants) { lookup_class.variants }

    let(:variant_names) { variants.map(&:name) }

    it "returns Variant objects" do
      expect(variants).to all be_a(described_class::Variant)
    end

    it "returns the expected variant names" do
      expect(variant_names).to contain_exactly(:foo, :bar)
    end
  end

  describe "getter methods" do
    let(:variant) { lookup.variant }

    it "sets getter class methods for each variant" do
      expect(lookup_class).to respond_to(:foo, :bar)
    end

    describe ".foo" do
      let(:lookup) { lookup_class.foo }

      it "returns the expected object" do
        expect(lookup).to be_a(lookup_class)
      end

      it "sets the name" do
        expect(lookup.name).to eq(:foo)
      end

      it "sets the value" do
        expect(lookup.value).to eq(:foo)
      end
    end

    describe ".bar" do
      let(:lookup) { lookup_class.bar }

      it "returns the expected object" do
        expect(lookup).to be_a(lookup_class)
      end

      it "sets the name" do
        expect(lookup.name).to eq(:bar)
      end

      it "sets the value" do
        expect(lookup.value).to eq(:value)
      end
    end
  end
end
