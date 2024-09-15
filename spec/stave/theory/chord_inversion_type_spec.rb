RSpec.describe Stave::Theory::ChordInversionType do
  describe ":major_triad" do
    describe ":first_inversion_major_triad" do
      subject(:chord_inversion_type) do
        described_class.first_inversion_major_triad
      end

      it "sets the expected attributes" do
        expect(chord_inversion_type).to have_attributes(
          chord_type: Stave::Theory::ChordType.major_triad,
          degrees: [
            Stave::Theory::Degree.root,
            Stave::Theory::Degree.flat_three,
            Stave::Theory::Degree.flat_six
          ]
        )
      end
    end

    describe ":second_inversion_major_triad" do
      subject(:chord_inversion_type) do
        described_class.second_inversion_major_triad
      end

      it "sets the expected attributes" do
        expect(chord_inversion_type).to have_attributes(
          chord_type: Stave::Theory::ChordType.major_triad,
          degrees: [
            Stave::Theory::Degree.root,
            Stave::Theory::Degree.four,
            Stave::Theory::Degree.six
          ]
        )
      end
    end
  end

  describe ":minor_triad" do
    describe ":first_inversion_minor_triad" do
      subject(:chord_inversion_type) do
        described_class.first_inversion_minor_triad
      end

      it "sets the expected attributes" do
        expect(chord_inversion_type).to have_attributes(
          chord_type: Stave::Theory::ChordType.minor_triad,
          degrees: [
            Stave::Theory::Degree.root,
            Stave::Theory::Degree.three,
            Stave::Theory::Degree.six
          ]
        )
      end
    end

    describe ":second_inversion_minor_triad" do
      subject(:chord_inversion_type) do
        described_class.second_inversion_minor_triad
      end

      it "sets the expected attributes" do
        expect(chord_inversion_type).to have_attributes(
          chord_type: Stave::Theory::ChordType.minor_triad,
          degrees: [
            Stave::Theory::Degree.root,
            Stave::Theory::Degree.four,
            Stave::Theory::Degree.flat_six
          ]
        )
      end
    end
  end

  describe ":diminished_triad" do
    describe ":first_inversion_diminished_triad" do
      subject(:chord_inversion_type) do
        described_class.first_inversion_diminished_triad
      end

      it "sets the expected attributes" do
        expect(chord_inversion_type).to have_attributes(
          chord_type: Stave::Theory::ChordType.diminished_triad,
          degrees: [
            Stave::Theory::Degree.root,
            Stave::Theory::Degree.flat_three,
            Stave::Theory::Degree.six
          ]
        )
      end
    end

    describe ":second_inversion_diminished_triad" do
      subject(:chord_inversion_type) do
        described_class.second_inversion_diminished_triad
      end

      it "sets the expected attributes" do
        expect(chord_inversion_type).to have_attributes(
          chord_type: Stave::Theory::ChordType.diminished_triad,
          degrees: [
            Stave::Theory::Degree.root,
            Stave::Theory::Degree.sharp_four,
            Stave::Theory::Degree.six
          ]
        )
      end
    end
  end

  describe ":major_seventh" do
    describe ":first_inversion_major_seventh" do
      subject(:chord_inversion_type) do
        described_class.first_inversion_major_seventh
      end

      it "sets the expected attributes" do
        expect(chord_inversion_type).to have_attributes(
          chord_type: Stave::Theory::ChordType.major_seventh,
          degrees: [
            Stave::Theory::Degree.root,
            Stave::Theory::Degree.flat_three,
            Stave::Theory::Degree.five,
            Stave::Theory::Degree.flat_six
          ]
        )
      end
    end

    describe ":second_inversion_major_seventh" do
      subject(:chord_inversion_type) do
        described_class.second_inversion_major_seventh
      end

      it "sets the expected attributes" do
        expect(chord_inversion_type).to have_attributes(
          chord_type: Stave::Theory::ChordType.major_seventh,
          degrees: [
            Stave::Theory::Degree.root,
            Stave::Theory::Degree.three,
            Stave::Theory::Degree.four,
            Stave::Theory::Degree.six
          ]
        )
      end
    end

    describe ":third_inversion_major_seventh" do
      subject(:chord_inversion_type) do
        described_class.third_inversion_major_seventh
      end

      it "sets the expected attributes" do
        expect(chord_inversion_type).to have_attributes(
          chord_type: Stave::Theory::ChordType.major_seventh,
          degrees: [
            Stave::Theory::Degree.root,
            Stave::Theory::Degree.flat_two,
            Stave::Theory::Degree.four,
            Stave::Theory::Degree.flat_six
          ]
        )
      end
    end
  end

  describe ":dominant_seventh" do
    describe ":first_inversion_dominant_seventh" do
      subject(:chord_inversion_type) do
        described_class.first_inversion_dominant_seventh
      end

      it "sets the expected attributes" do
        expect(chord_inversion_type).to have_attributes(
          chord_type: Stave::Theory::ChordType.dominant_seventh,
          degrees: [
            Stave::Theory::Degree.root,
            Stave::Theory::Degree.flat_three,
            Stave::Theory::Degree.flat_five,
            Stave::Theory::Degree.flat_six
          ]
        )
      end
    end

    describe ":second_inversion_dominant_seventh" do
      subject(:chord_inversion_type) do
        described_class.second_inversion_dominant_seventh
      end

      it "sets the expected attributes" do
        expect(chord_inversion_type).to have_attributes(
          chord_type: Stave::Theory::ChordType.dominant_seventh,
          degrees: [
            Stave::Theory::Degree.root,
            Stave::Theory::Degree.flat_three,
            Stave::Theory::Degree.four,
            Stave::Theory::Degree.six
          ]
        )
      end
    end

    describe ":third_inversion_dominant_seventh" do
      subject(:chord_inversion_type) do
        described_class.third_inversion_dominant_seventh
      end

      it "sets the expected attributes" do
        expect(chord_inversion_type).to have_attributes(
          chord_type: Stave::Theory::ChordType.dominant_seventh,
          degrees: [
            Stave::Theory::Degree.root,
            Stave::Theory::Degree.two,
            Stave::Theory::Degree.sharp_four,
            Stave::Theory::Degree.six
          ]
        )
      end
    end
  end

  describe ":minor_seventh" do
    describe ":first_inversion_minor_seventh" do
      subject(:chord_inversion_type) do
        described_class.first_inversion_minor_seventh
      end

      it "sets the expected attributes" do
        expect(chord_inversion_type).to have_attributes(
          chord_type: Stave::Theory::ChordType.minor_seventh,
          degrees: [
            Stave::Theory::Degree.root,
            Stave::Theory::Degree.three,
            Stave::Theory::Degree.five,
            Stave::Theory::Degree.six
          ]
        )
      end
    end

    describe ":second_inversion_minor_seventh" do
      subject(:chord_inversion_type) do
        described_class.second_inversion_minor_seventh
      end

      it "sets the expected attributes" do
        expect(chord_inversion_type).to have_attributes(
          chord_type: Stave::Theory::ChordType.minor_seventh,
          degrees: [
            Stave::Theory::Degree.root,
            Stave::Theory::Degree.flat_three,
            Stave::Theory::Degree.four,
            Stave::Theory::Degree.flat_six
          ]
        )
      end
    end

    describe ":third_inversion_minor_seventh" do
      subject(:chord_inversion_type) do
        described_class.third_inversion_minor_seventh
      end

      it "sets the expected attributes" do
        expect(chord_inversion_type).to have_attributes(
          chord_type: Stave::Theory::ChordType.minor_seventh,
          degrees: [
            Stave::Theory::Degree.root,
            Stave::Theory::Degree.two,
            Stave::Theory::Degree.four,
            Stave::Theory::Degree.six
          ]
        )
      end
    end
  end

  describe ":half_diminished_seventh" do
    describe ":first_inversion_half_diminished_seventh" do
      subject(:chord_inversion_type) do
        described_class.first_inversion_half_diminished_seventh
      end

      it "sets the expected attributes" do
        expect(chord_inversion_type).to have_attributes(
          chord_type: Stave::Theory::ChordType.half_diminished_seventh,
          degrees: [
            Stave::Theory::Degree.root,
            Stave::Theory::Degree.flat_three,
            Stave::Theory::Degree.five,
            Stave::Theory::Degree.six
          ]
        )
      end
    end

    describe ":second_inversion_half_diminished_seventh" do
      subject(:chord_inversion_type) do
        described_class.second_inversion_half_diminished_seventh
      end

      it "sets the expected attributes" do
        expect(chord_inversion_type).to have_attributes(
          chord_type: Stave::Theory::ChordType.half_diminished_seventh,
          degrees: [
            Stave::Theory::Degree.root,
            Stave::Theory::Degree.three,
            Stave::Theory::Degree.sharp_four,
            Stave::Theory::Degree.six
          ]
        )
      end
    end

    describe ":third_inversion_half_diminished_seventh" do
      subject(:chord_inversion_type) do
        described_class.third_inversion_half_diminished_seventh
      end

      it "sets the expected attributes" do
        expect(chord_inversion_type).to have_attributes(
          chord_type: Stave::Theory::ChordType.half_diminished_seventh,
          degrees: [
            Stave::Theory::Degree.root,
            Stave::Theory::Degree.two,
            Stave::Theory::Degree.four,
            Stave::Theory::Degree.flat_six
          ]
        )
      end
    end
  end
end