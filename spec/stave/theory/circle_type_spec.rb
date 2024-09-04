RSpec.describe Stave::Theory::CircleType do
  describe ":fourths" do
    subject(:circle_type) { described_class.fourths }

    it "sets the expected attributes" do
      expect(circle_type).to have_attributes(
        step: Stave::Theory::Interval.perfect_fourth
      )
    end
  end

  describe ":fifths" do
    subject(:circle_type) { described_class.fifths }

    it "sets the expected attributes" do
      expect(circle_type).to have_attributes(
        step: Stave::Theory::Interval.perfect_fifth
      )
    end
  end
end
