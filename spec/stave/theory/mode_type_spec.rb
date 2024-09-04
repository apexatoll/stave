RSpec.describe Stave::Theory::ModeType do
  describe ":major_scale" do
    describe ":ionian" do
      subject(:mode_type) { described_class.ionian }

      it "sets the expected attributes" do
        expect(mode_type).to have_attributes(
          degrees: [
            Stave::Theory::Degree.root,
            Stave::Theory::Degree.two,
            Stave::Theory::Degree.three,
            Stave::Theory::Degree.four,
            Stave::Theory::Degree.five,
            Stave::Theory::Degree.six,
            Stave::Theory::Degree.seven,
            Stave::Theory::Degree.octave
          ]
        )
      end
    end

    describe ":dorian" do
      subject(:mode_type) { described_class.dorian }

      it "sets the expected attributes" do
        expect(mode_type).to have_attributes(
          degrees: [
            Stave::Theory::Degree.root,
            Stave::Theory::Degree.two,
            Stave::Theory::Degree.flat_three,
            Stave::Theory::Degree.four,
            Stave::Theory::Degree.five,
            Stave::Theory::Degree.six,
            Stave::Theory::Degree.flat_seven,
            Stave::Theory::Degree.root
          ]
        )
      end
    end

    describe ":phrygian" do
      subject(:mode_type) { described_class.phrygian }

      it "sets the expected attributes" do
        expect(mode_type).to have_attributes(
          degrees: [
            Stave::Theory::Degree.root,
            Stave::Theory::Degree.flat_two,
            Stave::Theory::Degree.flat_three,
            Stave::Theory::Degree.four,
            Stave::Theory::Degree.five,
            Stave::Theory::Degree.flat_six,
            Stave::Theory::Degree.flat_seven,
            Stave::Theory::Degree.root
          ]
        )
      end
    end

    describe ":lydian" do
      subject(:mode_type) { described_class.lydian }

      it "sets the expected attributes" do
        expect(mode_type).to have_attributes(
          degrees: [
            Stave::Theory::Degree.root,
            Stave::Theory::Degree.two,
            Stave::Theory::Degree.three,
            Stave::Theory::Degree.sharp_four,
            Stave::Theory::Degree.five,
            Stave::Theory::Degree.six,
            Stave::Theory::Degree.seven,
            Stave::Theory::Degree.root
          ]
        )
      end
    end

    describe ":mixolydian" do
      subject(:mode_type) { described_class.mixolydian }

      it "sets the expected attributes" do
        expect(mode_type).to have_attributes(
          degrees: [
            Stave::Theory::Degree.root,
            Stave::Theory::Degree.two,
            Stave::Theory::Degree.three,
            Stave::Theory::Degree.four,
            Stave::Theory::Degree.five,
            Stave::Theory::Degree.six,
            Stave::Theory::Degree.flat_seven,
            Stave::Theory::Degree.root
          ]
        )
      end
    end

    describe ":aeolian" do
      subject(:mode_type) { described_class.aeolian }

      it "sets the expected attributes" do
        expect(mode_type).to have_attributes(
          degrees: [
            Stave::Theory::Degree.root,
            Stave::Theory::Degree.two,
            Stave::Theory::Degree.flat_three,
            Stave::Theory::Degree.four,
            Stave::Theory::Degree.five,
            Stave::Theory::Degree.flat_six,
            Stave::Theory::Degree.flat_seven,
            Stave::Theory::Degree.root
          ]
        )
      end
    end

    describe ":locrian" do
      subject(:mode_type) { described_class.locrian }

      it "sets the expected attributes" do
        expect(mode_type).to have_attributes(
          degrees: [
            Stave::Theory::Degree.root,
            Stave::Theory::Degree.flat_two,
            Stave::Theory::Degree.flat_three,
            Stave::Theory::Degree.four,
            Stave::Theory::Degree.flat_five,
            Stave::Theory::Degree.flat_six,
            Stave::Theory::Degree.flat_seven,
            Stave::Theory::Degree.root
          ]
        )
      end
    end
  end
end
