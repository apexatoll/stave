RSpec.describe Stave::Theory::KeySignature do
  describe ":flats" do
    describe ":one_flat" do
      subject(:key_signature) { described_class.one_flat }

      it "sets the expected attributes" do
        expect(key_signature).to have_attributes(
          group: described_class::Group.flats,
          flat_count: 1,
          sharp_count: 0
        )
      end
    end

    describe ":two_flats" do
      subject(:key_signature) { described_class.two_flats }

      it "sets the expected attributes" do
        expect(key_signature).to have_attributes(
          group: described_class::Group.flats,
          flat_count: 2,
          sharp_count: 0
        )
      end
    end

    describe ":three_flats" do
      subject(:key_signature) { described_class.three_flats }

      it "sets the expected attributes" do
        expect(key_signature).to have_attributes(
          group: described_class::Group.flats,
          flat_count: 3,
          sharp_count: 0
        )
      end
    end

    describe ":four_flats" do
      subject(:key_signature) { described_class.four_flats }

      it "sets the expected attributes" do
        expect(key_signature).to have_attributes(
          group: described_class::Group.flats,
          flat_count: 4,
          sharp_count: 0
        )
      end
    end

    describe ":five_flats" do
      subject(:key_signature) { described_class.five_flats }

      it "sets the expected attributes" do
        expect(key_signature).to have_attributes(
          group: described_class::Group.flats,
          flat_count: 5,
          sharp_count: 0
        )
      end
    end

    describe ":six_flats" do
      subject(:key_signature) { described_class.six_flats }

      it "sets the expected attributes" do
        expect(key_signature).to have_attributes(
          group: described_class::Group.flats,
          flat_count: 6,
          sharp_count: 0
        )
      end
    end

    describe ":seven_flats" do
      subject(:key_signature) { described_class.seven_flats }

      it "sets the expected attributes" do
        expect(key_signature).to have_attributes(
          group: described_class::Group.flats,
          flat_count: 7,
          sharp_count: 0
        )
      end
    end
  end

  describe ":natural" do
    subject(:key_signature) { described_class.natural }

    it "sets the expected attributes" do
      expect(key_signature).to have_attributes(
        group: described_class::Group.natural,
        sharp_count: 0,
        flat_count: 0
      )
    end
  end

  describe ":sharps" do
    describe ":one_sharp" do
      subject(:key_signature) { described_class.one_sharp }

      it "sets the expected attributes" do
        expect(key_signature).to have_attributes(
          group: described_class::Group.sharps,
          sharp_count: 1,
          flat_count: 0
        )
      end
    end

    describe ":two_sharps" do
      subject(:key_signature) { described_class.two_sharps }

      it "sets the expected attributes" do
        expect(key_signature).to have_attributes(
          group: described_class::Group.sharps,
          sharp_count: 2,
          flat_count: 0
        )
      end
    end

    describe ":three_sharps" do
      subject(:key_signature) { described_class.three_sharps }

      it "sets the expected attributes" do
        expect(key_signature).to have_attributes(
          group: described_class::Group.sharps,
          sharp_count: 3,
          flat_count: 0
        )
      end
    end

    describe ":four_sharps" do
      subject(:key_signature) { described_class.four_sharps }

      it "sets the expected attributes" do
        expect(key_signature).to have_attributes(
          group: described_class::Group.sharps,
          sharp_count: 4,
          flat_count: 0
        )
      end
    end

    describe ":five_sharps" do
      subject(:key_signature) { described_class.five_sharps }

      it "sets the expected attributes" do
        expect(key_signature).to have_attributes(
          group: described_class::Group.sharps,
          sharp_count: 5,
          flat_count: 0
        )
      end
    end

    describe ":six_sharps" do
      subject(:key_signature) { described_class.six_sharps }

      it "sets the expected attributes" do
        expect(key_signature).to have_attributes(
          group: described_class::Group.sharps,
          sharp_count: 6,
          flat_count: 0
        )
      end
    end

    describe ":seven_sharps" do
      subject(:key_signature) { described_class.seven_sharps }

      it "sets the expected attributes" do
        expect(key_signature).to have_attributes(
          group: described_class::Group.sharps,
          sharp_count: 7,
          flat_count: 0
        )
      end
    end
  end

  describe ".parse" do
    subject(:key_signature) { described_class.parse(scale) }

    let(:scale) { Stave::Theory::Scale.new(type: scale_type, root:) }

    each_case(:key_signatures).each do |scale_type_variant, cases|
      describe ":#{scale_type_variant}" do
        let(:scale_type) { Stave::Theory::ScaleType.new(scale_type_variant) }

        cases.each do |root_variant, expected_variant|
          describe ":#{root_variant}" do
            let(:root) { Stave::Theory::Note.new(root_variant) }

            let(:expected) { described_class.new(expected_variant) }

            it "returns #{expected_variant}" do
              expect(key_signature).to eq(expected)
            end
          end
        end
      end
    end
  end
end
