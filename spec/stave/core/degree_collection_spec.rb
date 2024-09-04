RSpec.describe Stave::Core::DegreeCollection do
  subject(:degree_collection) { degree_collection_class.example }

  let(:degree_collection_class) do
    Class.new(described_class) do
      variant :example, degrees: [
        Stave::Theory::Degree.root,
        Stave::Theory::Degree.three,
        Stave::Theory::Degree.five,
        Stave::Theory::Degree.six,
        Stave::Theory::Degree.octave
      ]
    end
  end

  describe "#degrees" do
    subject(:degrees) { degree_collection.degrees }

    it "returns the expected degrees" do
      expect(degrees).to eq(
        [
          Stave::Theory::Degree.root,
          Stave::Theory::Degree.three,
          Stave::Theory::Degree.five,
          Stave::Theory::Degree.six,
          Stave::Theory::Degree.octave
        ]
      )
    end
  end

  describe "#intervals" do
    subject(:intervals) { degree_collection.intervals }

    it "returns the expected intervals" do
      expect(intervals).to eq(
        [
          Stave::Theory::Interval.perfect_unison,
          Stave::Theory::Interval.major_third,
          Stave::Theory::Interval.perfect_fifth,
          Stave::Theory::Interval.major_sixth,
          Stave::Theory::Interval.perfect_octave
        ]
      )
    end
  end

  describe "#rotate" do
    subject(:rotated) { degree_collection.rotate(position) }

    context "when position is 1" do
      let(:position) { 1 }

      it "returns the unrotated degrees" do
        expect(rotated).to eq(degree_collection.degrees)
      end
    end

    context "when position is less than degree count" do
      let(:position) { 2 }

      it "returns the rotated degrees" do
        expect(rotated).to eq(
          [
            Stave::Theory::Degree.three,
            Stave::Theory::Degree.five,
            Stave::Theory::Degree.six,
            Stave::Theory::Degree.root,
            Stave::Theory::Degree.three
          ]
        )
      end
    end

    context "when position is greater than degree count" do
      let(:position) { 8 }

      it "returns the rotated degrees" do
        expect(rotated).to eq(
          [
            Stave::Theory::Degree.six,
            Stave::Theory::Degree.root,
            Stave::Theory::Degree.three,
            Stave::Theory::Degree.five,
            Stave::Theory::Degree.six
          ]
        )
      end
    end
  end

  describe "#steps" do
    subject(:steps) { degree_collection.steps }

    it "returns the expected steps" do
      expect(steps).to eq(
        [
          Stave::Theory::Interval.major_third,
          Stave::Theory::Interval.minor_third,
          Stave::Theory::Interval.major_second,
          Stave::Theory::Interval.minor_third
        ]
      )
    end
  end

  describe "#uniq" do
    subject(:uniq) { degree_collection.uniq }

    it "returns the expected degrees without repeats" do
      expect(uniq).to eq(
        [
          Stave::Theory::Degree.root,
          Stave::Theory::Degree.three,
          Stave::Theory::Degree.five,
          Stave::Theory::Degree.six
        ]
      )
    end
  end
end
