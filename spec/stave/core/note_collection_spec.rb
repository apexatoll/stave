RSpec.describe Stave::Core::NoteCollection do
  subject(:note_collection) { described_class.new(root:, type:) }

  let(:type) { instance_double(Stave::Core::DegreeCollection, intervals:) }

  let(:degrees) do
    [
      Stave::Theory::Degree.root,
      Stave::Theory::Degree.four,
      Stave::Theory::Degree.six,
      Stave::Theory::Degree.seven,
      Stave::Theory::Degree.octave
    ]
  end

  let(:intervals) { degrees.map(&:interval) }

  describe "#notes" do
    subject(:notes) { note_collection.notes }

    context "when root is C" do
      let(:root) { Stave::Theory::Note.c_natural }

      it "returns the expected notes" do
        expect(notes).to eq(
          [
            Stave::Theory::Note.c_natural,
            Stave::Theory::Note.f_natural,
            Stave::Theory::Note.a_natural,
            Stave::Theory::Note.b_natural,
            Stave::Theory::Note.c_natural
          ]
        )
      end
    end

    context "when root is D" do
      let(:root) { Stave::Theory::Note.d_natural }

      it "returns the expected notes" do
        expect(notes).to eq(
          [
            Stave::Theory::Note.d_natural,
            Stave::Theory::Note.g_natural,
            Stave::Theory::Note.b_natural,
            Stave::Theory::Note.c_sharp,
            Stave::Theory::Note.d_natural
          ]
        )
      end
    end

    context "when root is E" do
      let(:root) { Stave::Theory::Note.e_natural }

      it "returns the expected notes" do
        expect(notes).to eq(
          [
            Stave::Theory::Note.e_natural,
            Stave::Theory::Note.a_natural,
            Stave::Theory::Note.c_sharp,
            Stave::Theory::Note.d_sharp,
            Stave::Theory::Note.e_natural
          ]
        )
      end
    end

    context "when root is F" do
      let(:root) { Stave::Theory::Note.f_natural }

      it "returns the expected notes" do
        expect(notes).to eq(
          [
            Stave::Theory::Note.f_natural,
            Stave::Theory::Note.b_flat,
            Stave::Theory::Note.d_natural,
            Stave::Theory::Note.e_natural,
            Stave::Theory::Note.f_natural
          ]
        )
      end
    end

    context "when root is G" do
      let(:root) { Stave::Theory::Note.g_natural }

      it "returns the expected notes" do
        expect(notes).to eq(
          [
            Stave::Theory::Note.g_natural,
            Stave::Theory::Note.c_natural,
            Stave::Theory::Note.e_natural,
            Stave::Theory::Note.f_sharp,
            Stave::Theory::Note.g_natural
          ]
        )
      end
    end

    context "when root is A" do
      let(:root) { Stave::Theory::Note.a_natural }

      it "returns the expected notes" do
        expect(notes).to eq(
          [
            Stave::Theory::Note.a_natural,
            Stave::Theory::Note.d_natural,
            Stave::Theory::Note.f_sharp,
            Stave::Theory::Note.g_sharp,
            Stave::Theory::Note.a_natural
          ]
        )
      end
    end

    context "when root is B" do
      let(:root) { Stave::Theory::Note.b_natural }

      it "returns the expected notes" do
        expect(notes).to eq(
          [
            Stave::Theory::Note.b_natural,
            Stave::Theory::Note.e_natural,
            Stave::Theory::Note.g_sharp,
            Stave::Theory::Note.a_sharp,
            Stave::Theory::Note.b_natural
          ]
        )
      end
    end
  end

  describe "#uniq" do
    subject(:uniq) { note_collection.uniq }

    context "when root is C" do
      let(:root) { Stave::Theory::Note.c_natural }

      it "returns the expected notes without repeats" do
        expect(uniq).to eq(
          [
            Stave::Theory::Note.c_natural,
            Stave::Theory::Note.f_natural,
            Stave::Theory::Note.a_natural,
            Stave::Theory::Note.b_natural
          ]
        )
      end
    end

    context "when root is D" do
      let(:root) { Stave::Theory::Note.d_natural }

      it "returns the expected notes without repeats" do
        expect(uniq).to eq(
          [
            Stave::Theory::Note.d_natural,
            Stave::Theory::Note.g_natural,
            Stave::Theory::Note.b_natural,
            Stave::Theory::Note.c_sharp
          ]
        )
      end
    end

    context "when root is E" do
      let(:root) { Stave::Theory::Note.e_natural }

      it "returns the expected notes without repeats" do
        expect(uniq).to eq(
          [
            Stave::Theory::Note.e_natural,
            Stave::Theory::Note.a_natural,
            Stave::Theory::Note.c_sharp,
            Stave::Theory::Note.d_sharp
          ]
        )
      end
    end

    context "when root is F" do
      let(:root) { Stave::Theory::Note.f_natural }

      it "returns the expected notes without repeats" do
        expect(uniq).to eq(
          [
            Stave::Theory::Note.f_natural,
            Stave::Theory::Note.b_flat,
            Stave::Theory::Note.d_natural,
            Stave::Theory::Note.e_natural
          ]
        )
      end
    end

    context "when root is G" do
      let(:root) { Stave::Theory::Note.g_natural }

      it "returns the expected notes without repeats" do
        expect(uniq).to eq(
          [
            Stave::Theory::Note.g_natural,
            Stave::Theory::Note.c_natural,
            Stave::Theory::Note.e_natural,
            Stave::Theory::Note.f_sharp
          ]
        )
      end
    end

    context "when root is A" do
      let(:root) { Stave::Theory::Note.a_natural }

      it "returns the expected notes without repeats" do
        expect(uniq).to eq(
          [
            Stave::Theory::Note.a_natural,
            Stave::Theory::Note.d_natural,
            Stave::Theory::Note.f_sharp,
            Stave::Theory::Note.g_sharp
          ]
        )
      end
    end

    context "when root is B" do
      let(:root) { Stave::Theory::Note.b_natural }

      it "returns the expected notes without repeats" do
        expect(uniq).to eq(
          [
            Stave::Theory::Note.b_natural,
            Stave::Theory::Note.e_natural,
            Stave::Theory::Note.g_sharp,
            Stave::Theory::Note.a_sharp
          ]
        )
      end
    end
  end
end
