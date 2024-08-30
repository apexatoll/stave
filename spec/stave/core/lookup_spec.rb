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

  describe "#==" do
    subject(:equals?) { lookup == other }

    let(:variant) { :felix }

    context "when other is a String" do
      context "and string does not match variant" do
        let(:other) { "foobar" }

        it "returns false" do
          expect(equals?).to be(false)
        end
      end

      context "and string matches variant" do
        let(:other) { "felix" }

        it "returns true" do
          expect(equals?).to be(true)
        end
      end
    end

    context "when other is a Symbol" do
      context "and symbol does not match variant" do
        let(:other) { :foobar }

        it "returns false" do
          expect(equals?).to be(false)
        end
      end

      context "and string matches variant" do
        let(:other) { :felix }

        it "returns true" do
          expect(equals?).to be(true)
        end
      end
    end

    context "when other is a Lookup" do
      let(:other) { lookup_class.new(other_variant) }

      context "and lookup variants do not match" do
        let(:other_variant) { :fido }

        it "returns false" do
          expect(equals?).to be(false)
        end
      end

      context "and lookup variants match" do
        let(:other_variant) { :felix }

        it "returns true" do
          expect(equals?).to be(true)
        end
      end
    end
  end

  describe "factory methods" do
    it "sets class factory methods for each variant" do
      expect(lookup_class).to respond_to(:fido, :felix)
    end

    it "initialises the corresponding variant" do
      expect(lookup_class.fido).to have_attributes(
        variant: :fido,
        species: :dog,
        age: 3
      )
    end
  end

  describe ".keys" do
    subject(:keys) { lookup_class.keys }

    it "returns an array containing symbols" do
      expect(keys).to all be_a(Symbol)
    end

    it "returns the expected variant keys" do
      expect(keys).to contain_exactly(:fido, :felix)
    end
  end

  describe ".variants" do
    subject(:variants) { lookup_class.variants }

    it "returns an array containing lookup instances" do
      expect(variants).to all be_a(lookup_class)
    end

    it "returns all of the variants" do
      expect(variants).to contain_exactly(
        lookup_class.fido,
        lookup_class.felix
      )
    end
  end

  describe ".where" do
    subject(:variants) { lookup_class.where(**attributes) }

    context "when no variants match specified criteria" do
      let(:attributes) { { species: :bird } }

      it "returns an empty array" do
        expect(variants).to be_empty
      end
    end

    context "when some variants match specified criteria" do
      let(:attributes) { { species: :cat } }

      it "returns the matching variants" do
        expect(variants).to contain_exactly(lookup_class.felix)
      end
    end
  end

  describe ".find_by" do
    subject(:variant) { lookup_class.find_by(**attributes) }

    context "when no variants match specified criteria" do
      let(:attributes) { { species: :bird } }

      it "returns nil" do
        expect(variant).to be_nil
      end
    end

    context "when some variants match specified criteria" do
      let(:attributes) { { species: :cat } }

      it "returns the first matching variant" do
        expect(variant).to eq(lookup_class.felix)
      end
    end
  end

  describe ".with_options" do
    let(:lookup_class) do
      Class.new(described_class) do
        with_options foobar: true do
          variant :foo
          variant :bar
        end

        variant :baz, foobar: false
      end
    end

    it "sets the variants with the common options" do
      %i[foo bar].each do |variant|
        expect(lookup_class.send(variant).foobar).to be(true)
      end
    end

    it "does not set the common options for variants outside of block" do
      expect(lookup_class.baz.foobar).to be(false)
    end
  end
end
