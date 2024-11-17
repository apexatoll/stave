RSpec.describe Stave::Core::NoteCollection do
  subject(:note_collection) { described_class.new(root:, type:) }

  let(:type) { type_class.foo }

  let(:type_class) do
    Class.new(Stave::Core::DegreeCollection) do
      variant :foo, degrees: [
        Stave::Theory::Degree.root,
        Stave::Theory::Degree.four,
        Stave::Theory::Degree.six,
        Stave::Theory::Degree.seven,
        Stave::Theory::Degree.octave
      ]

      variant :bar, degrees: [
        Stave::Theory::Degree.root,
        Stave::Theory::Degree.three,
        Stave::Theory::Degree.four
      ]
    end
  end

  let(:root) { Stave::Theory::Note.c_natural }

  before do
    stub_const "Stave::Theory::NoteCollectionType", type_class
  end

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

  describe "#note_at" do
    subject(:note) { note_collection.note_at(position) }

    context "when position is 0" do
      let(:position) { 0 }

      it "returns nil" do
        expect(note).to be_nil
      end
    end

    context "when position is less than number of notes" do
      let(:position) { 3 }

      it "returns the third note" do
        expect(note).to eq(Stave::Theory::Note.a_natural)
      end
    end

    context "when position is greater than number of notes" do
      let(:position) { 9 }

      it "returns the wrapped note" do
        expect(note).to eq(Stave::Theory::Note.f_natural)
      end
    end
  end

  describe "#note_degree" do
    subject(:note_degree) { note_collection.note_degree(note) }

    context "when note is not diatonic to the scale" do
      let(:note) { Stave::Theory::Note.e_flat }

      it "returns nil" do
        expect(note_degree).to be_nil
      end
    end

    context "when note is diatonic to the scale" do
      let(:note) { Stave::Theory::Note.f_natural }

      it "returns the degree of the note in the scale" do
        expect(note_degree).to eq(Stave::Theory::Degree.four)
      end
    end
  end

  describe "#degree_note" do
    subject(:degree_note) { note_collection.degree_note(degree) }

    context "when degree is not part of the scale" do
      let(:degree) { Stave::Theory::Degree.five }

      it "returns nil" do
        expect(degree_note).to be_nil
      end
    end

    context "when degree is part of the scale" do
      let(:degree) { Stave::Theory::Degree.four }

      it "returns the note corresponding to the degree in the scale" do
        expect(degree_note).to eq(Stave::Theory::Note.f_natural)
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
