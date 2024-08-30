RSpec.describe Stave::Theory::Note do
  describe Stave::Theory::Note::PitchClass do
    describe ":c" do
      subject(:pitch_class) { described_class.c }

      it "sets the expected attributes" do
        expect(pitch_class).to have_attributes(to_s: "C", to_i: 0)
      end
    end

    describe ":d" do
      subject(:pitch_class) { described_class.d }

      it "sets the expected attributes" do
        expect(pitch_class).to have_attributes(to_s: "D", to_i: 2)
      end
    end

    describe ":e" do
      subject(:pitch_class) { described_class.e }

      it "sets the expected attributes" do
        expect(pitch_class).to have_attributes(to_s: "E", to_i: 4)
      end
    end

    describe ":f" do
      subject(:pitch_class) { described_class.f }

      it "sets the expected attributes" do
        expect(pitch_class).to have_attributes(to_s: "F", to_i: 5)
      end
    end

    describe ":g" do
      subject(:pitch_class) { described_class.g }

      it "sets the expected attributes" do
        expect(pitch_class).to have_attributes(to_s: "G", to_i: 7)
      end
    end

    describe ":a" do
      subject(:pitch_class) { described_class.a }

      it "sets the expected attributes" do
        expect(pitch_class).to have_attributes(to_s: "A", to_i: 9)
      end
    end

    describe ":b" do
      subject(:pitch_class) { described_class.b }

      it "sets the expected attributes" do
        expect(pitch_class).to have_attributes(to_s: "B", to_i: 11)
      end
    end
  end

  describe ":c_double_flat" do
    subject(:note) { described_class.c_double_flat }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.c,
        accidental: Stave::Theory::Accidental.double_flat,
        to_s: "C♭♭",
        to_i: 10
      )
    end
  end

  describe ":c_flat" do
    subject(:note) { described_class.c_flat }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.c,
        accidental: Stave::Theory::Accidental.flat,
        to_s: "C♭",
        to_i: 11
      )
    end
  end

  describe ":c_natural" do
    subject(:note) { described_class.c_natural }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.c,
        accidental: Stave::Theory::Accidental.natural,
        to_s: "C",
        to_i: 0
      )
    end
  end

  describe ":c_sharp" do
    subject(:note) { described_class.c_sharp }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.c,
        accidental: Stave::Theory::Accidental.sharp,
        to_s: "C♯",
        to_i: 1
      )
    end
  end

  describe ":c_double_sharp" do
    subject(:note) { described_class.c_double_sharp }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.c,
        accidental: Stave::Theory::Accidental.double_sharp,
        to_s: "C♯♯",
        to_i: 2
      )
    end
  end

  describe ":d_double_flat" do
    subject(:note) { described_class.d_double_flat }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.d,
        accidental: Stave::Theory::Accidental.double_flat,
        to_s: "D♭♭",
        to_i: 0
      )
    end
  end

  describe ":d_flat" do
    subject(:note) { described_class.d_flat }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.d,
        accidental: Stave::Theory::Accidental.flat,
        to_s: "D♭",
        to_i: 1
      )
    end
  end

  describe ":d_natural" do
    subject(:note) { described_class.d_natural }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.d,
        accidental: Stave::Theory::Accidental.natural,
        to_s: "D",
        to_i: 2
      )
    end
  end

  describe ":d_sharp" do
    subject(:note) { described_class.d_sharp }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.d,
        accidental: Stave::Theory::Accidental.sharp,
        to_s: "D♯",
        to_i: 3
      )
    end
  end

  describe ":d_double_sharp" do
    subject(:note) { described_class.d_double_sharp }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.d,
        accidental: Stave::Theory::Accidental.double_sharp,
        to_s: "D♯♯",
        to_i: 4
      )
    end
  end

  describe ":e_double_flat" do
    subject(:note) { described_class.e_double_flat }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.e,
        accidental: Stave::Theory::Accidental.double_flat,
        to_s: "E♭♭",
        to_i: 2
      )
    end
  end

  describe ":e_flat" do
    subject(:note) { described_class.e_flat }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.e,
        accidental: Stave::Theory::Accidental.flat,
        to_s: "E♭",
        to_i: 3
      )
    end
  end

  describe ":e_natural" do
    subject(:note) { described_class.e_natural }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.e,
        accidental: Stave::Theory::Accidental.natural,
        to_s: "E",
        to_i: 4
      )
    end
  end

  describe ":e_sharp" do
    subject(:note) { described_class.e_sharp }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.e,
        accidental: Stave::Theory::Accidental.sharp,
        to_s: "E♯",
        to_i: 5
      )
    end
  end

  describe ":e_double_sharp" do
    subject(:note) { described_class.e_double_sharp }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.e,
        accidental: Stave::Theory::Accidental.double_sharp,
        to_s: "E♯♯",
        to_i: 6
      )
    end
  end

  describe ":f_double_flat" do
    subject(:note) { described_class.f_double_flat }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.f,
        accidental: Stave::Theory::Accidental.double_flat,
        to_s: "F♭♭",
        to_i: 3
      )
    end
  end

  describe ":f_flat" do
    subject(:note) { described_class.f_flat }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.f,
        accidental: Stave::Theory::Accidental.flat,
        to_s: "F♭",
        to_i: 4
      )
    end
  end

  describe ":f_natural" do
    subject(:note) { described_class.f_natural }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.f,
        accidental: Stave::Theory::Accidental.natural,
        to_s: "F",
        to_i: 5
      )
    end
  end

  describe ":f_sharp" do
    subject(:note) { described_class.f_sharp }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.f,
        accidental: Stave::Theory::Accidental.sharp,
        to_s: "F♯",
        to_i: 6
      )
    end
  end

  describe ":f_double_sharp" do
    subject(:note) { described_class.f_double_sharp }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.f,
        accidental: Stave::Theory::Accidental.double_sharp,
        to_s: "F♯♯",
        to_i: 7
      )
    end
  end

  describe ":g_double_flat" do
    subject(:note) { described_class.g_double_flat }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.g,
        accidental: Stave::Theory::Accidental.double_flat,
        to_s: "G♭♭",
        to_i: 5
      )
    end
  end

  describe ":g_flat" do
    subject(:note) { described_class.g_flat }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.g,
        accidental: Stave::Theory::Accidental.flat,
        to_s: "G♭",
        to_i: 6
      )
    end
  end

  describe ":g_natural" do
    subject(:note) { described_class.g_natural }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.g,
        accidental: Stave::Theory::Accidental.natural,
        to_s: "G",
        to_i: 7
      )
    end
  end

  describe ":g_sharp" do
    subject(:note) { described_class.g_sharp }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.g,
        accidental: Stave::Theory::Accidental.sharp,
        to_s: "G♯",
        to_i: 8
      )
    end
  end

  describe ":g_double_sharp" do
    subject(:note) { described_class.g_double_sharp }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.g,
        accidental: Stave::Theory::Accidental.double_sharp,
        to_s: "G♯♯",
        to_i: 9
      )
    end
  end

  describe ":a_double_flat" do
    subject(:note) { described_class.a_double_flat }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.a,
        accidental: Stave::Theory::Accidental.double_flat,
        to_s: "A♭♭",
        to_i: 7
      )
    end
  end

  describe ":a_flat" do
    subject(:note) { described_class.a_flat }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.a,
        accidental: Stave::Theory::Accidental.flat,
        to_s: "A♭",
        to_i: 8
      )
    end
  end

  describe ":a_natural" do
    subject(:note) { described_class.a_natural }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.a,
        accidental: Stave::Theory::Accidental.natural,
        to_s: "A",
        to_i: 9
      )
    end
  end

  describe ":a_sharp" do
    subject(:note) { described_class.a_sharp }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.a,
        accidental: Stave::Theory::Accidental.sharp,
        to_s: "A♯",
        to_i: 10
      )
    end
  end

  describe ":a_double_sharp" do
    subject(:note) { described_class.a_double_sharp }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.a,
        accidental: Stave::Theory::Accidental.double_sharp,
        to_s: "A♯♯",
        to_i: 11
      )
    end
  end

  describe ":b_double_flat" do
    subject(:note) { described_class.b_double_flat }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.b,
        accidental: Stave::Theory::Accidental.double_flat,
        to_s: "B♭♭",
        to_i: 9
      )
    end
  end

  describe ":b_flat" do
    subject(:note) { described_class.b_flat }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.b,
        accidental: Stave::Theory::Accidental.flat,
        to_s: "B♭",
        to_i: 10
      )
    end
  end

  describe ":b_natural" do
    subject(:note) { described_class.b_natural }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.b,
        accidental: Stave::Theory::Accidental.natural,
        to_s: "B",
        to_i: 11
      )
    end
  end

  describe ":b_sharp" do
    subject(:note) { described_class.b_sharp }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.b,
        accidental: Stave::Theory::Accidental.sharp,
        to_s: "B♯",
        to_i: 0
      )
    end
  end

  describe ":b_double_sharp" do
    subject(:note) { described_class.b_double_sharp }

    it "sets the expected attributes" do
      expect(note).to have_attributes(
        pitch_class: described_class::PitchClass.b,
        accidental: Stave::Theory::Accidental.double_sharp,
        to_s: "B♯♯",
        to_i: 1
      )
    end
  end

  describe "#note_above" do
    shared_examples :returns_note_above do |cases|
      cases.each do |options|
        context "when #{options[:other]}" do
          it "returns #{options[:note]}" do
            expect(
              note.note_above(Stave::Theory::Interval.new(options[:other]))
            ).to eq(options[:note])
          end
        end
      end
    end

    describe "C" do
      let(:note) { described_class.c_natural }

      include_examples :returns_note_above, [
        { other: :minor_second, note: described_class.d_flat },
        { other: :major_second, note: described_class.d_natural },
        { other: :minor_third, note: described_class.e_flat },
        { other: :major_third, note: described_class.e_natural },
        { other: :perfect_fourth, note: described_class.f_natural },
        { other: :diminished_fifth, note: described_class.g_flat },
        { other: :perfect_fifth, note: described_class.g_natural },
        { other: :minor_sixth, note: described_class.a_flat },
        { other: :major_sixth, note: described_class.a_natural },
        { other: :minor_seventh, note: described_class.b_flat },
        { other: :major_seventh, note: described_class.b_natural },
        { other: :perfect_octave, note: described_class.c_natural },
        { other: :minor_ninth, note: described_class.d_flat },
        { other: :major_ninth, note: described_class.d_natural },
        { other: :perfect_eleventh, note: described_class.f_natural },
        { other: :minor_thirteenth, note: described_class.a_flat },
        { other: :major_thirteenth, note: described_class.a_natural }
      ]
    end

    describe "G" do
      let(:note) { described_class.g_natural }

      include_examples :returns_note_above, [
        { other: :minor_second, note: described_class.a_flat },
        { other: :major_second, note: described_class.a_natural },
        { other: :minor_third, note: described_class.b_flat },
        { other: :major_third, note: described_class.b_natural },
        { other: :perfect_fourth, note: described_class.c_natural },
        { other: :diminished_fifth, note: described_class.d_flat },
        { other: :perfect_fifth, note: described_class.d_natural },
        { other: :minor_sixth, note: described_class.e_flat },
        { other: :major_sixth, note: described_class.e_natural },
        { other: :minor_seventh, note: described_class.f_natural },
        { other: :major_seventh, note: described_class.f_sharp },
        { other: :perfect_octave, note: described_class.g_natural },
        { other: :minor_ninth, note: described_class.a_flat },
        { other: :major_ninth, note: described_class.a_natural },
        { other: :perfect_eleventh, note: described_class.c_natural },
        { other: :minor_thirteenth, note: described_class.e_flat },
        { other: :major_thirteenth, note: described_class.e_natural }
      ]
    end

    describe "F♯" do
      let(:note) { described_class.f_sharp }

      include_examples :returns_note_above, [
        { other: :minor_second, note: described_class.g_natural },
        { other: :major_second, note: described_class.g_sharp },
        { other: :minor_third, note: described_class.a_natural },
        { other: :major_third, note: described_class.a_sharp },
        { other: :perfect_fourth, note: described_class.b_natural },
        { other: :perfect_fifth, note: described_class.c_sharp },
        { other: :minor_sixth, note: described_class.d_natural },
        { other: :major_sixth, note: described_class.d_sharp },
        { other: :minor_seventh, note: described_class.e_natural },
        { other: :major_seventh, note: described_class.e_sharp },
        { other: :perfect_octave, note: described_class.f_sharp },
        { other: :minor_ninth, note: described_class.g_natural },
        { other: :major_ninth, note: described_class.g_sharp },
        { other: :perfect_eleventh, note: described_class.b_natural },
        { other: :minor_thirteenth, note: described_class.d_natural },
        { other: :major_thirteenth, note: described_class.d_sharp }
      ]
    end

    describe "B♭" do
      let(:note) { described_class.b_flat }

      include_examples :returns_note_above, [
        { other: :minor_second, note: described_class.c_flat },
        { other: :major_second, note: described_class.c_natural },
        { other: :minor_third, note: described_class.d_flat },
        { other: :major_third, note: described_class.d_natural },
        { other: :perfect_fourth, note: described_class.e_flat },
        { other: :perfect_fifth, note: described_class.f_natural },
        { other: :minor_sixth, note: described_class.g_flat },
        { other: :major_sixth, note: described_class.g_natural },
        { other: :minor_seventh, note: described_class.a_flat },
        { other: :major_seventh, note: described_class.a_natural },
        { other: :perfect_octave, note: described_class.b_flat },
        { other: :minor_ninth, note: described_class.c_flat },
        { other: :major_ninth, note: described_class.c_natural },
        { other: :perfect_eleventh, note: described_class.e_flat },
        { other: :minor_thirteenth, note: described_class.g_flat },
        { other: :major_thirteenth, note: described_class.g_natural }
      ]
    end
  end

  describe "#note_below" do
    shared_examples :returns_note_below do |cases|
      cases.each do |options|
        context "when #{options[:other]}" do
          it "returns #{options[:note]}" do
            expect(
              note.note_below(Stave::Theory::Interval.new(options[:other]))
            ).to eq(options[:note])
          end
        end
      end
    end

    describe "C" do
      let(:note) { described_class.c_natural }

      include_examples :returns_note_below, [
        { other: :minor_second, note: described_class.b_natural },
        { other: :major_second, note: described_class.b_flat },
        { other: :minor_third, note: described_class.a_natural },
        { other: :major_third, note: described_class.a_flat },
        { other: :perfect_fourth, note: described_class.g_natural },
        { other: :diminished_fifth, note: described_class.f_sharp },
        { other: :perfect_fifth, note: described_class.f_natural },
        { other: :minor_sixth, note: described_class.e_natural },
        { other: :major_sixth, note: described_class.e_flat },
        { other: :minor_seventh, note: described_class.d_natural },
        { other: :major_seventh, note: described_class.d_flat },
        { other: :perfect_octave, note: described_class.c_natural }
      ]
    end

    describe "G" do
      let(:note) { described_class.g_natural }

      include_examples :returns_note_below, [
        { other: :minor_second, note: described_class.f_sharp },
        { other: :major_second, note: described_class.f_natural },
        { other: :minor_third, note: described_class.e_natural },
        { other: :major_third, note: described_class.e_flat },
        { other: :perfect_fourth, note: described_class.d_natural },
        { other: :diminished_fifth, note: described_class.c_sharp },
        { other: :perfect_fifth, note: described_class.c_natural },
        { other: :minor_sixth, note: described_class.b_natural },
        { other: :major_sixth, note: described_class.b_flat },
        { other: :minor_seventh, note: described_class.a_natural },
        { other: :major_seventh, note: described_class.a_flat },
        { other: :perfect_octave, note: described_class.g_natural }
      ]
    end

    describe "F♯" do
      let(:note) { described_class.f_sharp }

      include_examples :returns_note_below, [
        { other: :minor_second, note: described_class.e_sharp },
        { other: :major_second, note: described_class.e_natural },
        { other: :minor_third, note: described_class.d_sharp },
        { other: :major_third, note: described_class.d_natural },
        { other: :perfect_fourth, note: described_class.c_sharp },
        { other: :perfect_fifth, note: described_class.b_natural },
        { other: :minor_sixth, note: described_class.a_sharp },
        { other: :major_sixth, note: described_class.a_natural },
        { other: :minor_seventh, note: described_class.g_sharp },
        { other: :major_seventh, note: described_class.g_natural },
        { other: :perfect_octave, note: described_class.f_sharp }
      ]
    end

    describe "B♭" do
      let(:note) { described_class.b_flat }

      include_examples :returns_note_below, [
        { other: :minor_second, note: described_class.a_natural },
        { other: :major_second, note: described_class.a_flat },
        { other: :minor_third, note: described_class.g_natural },
        { other: :major_third, note: described_class.g_flat },
        { other: :perfect_fourth, note: described_class.f_natural },
        { other: :perfect_fifth, note: described_class.e_flat },
        { other: :minor_sixth, note: described_class.d_natural },
        { other: :major_sixth, note: described_class.d_flat },
        { other: :minor_seventh, note: described_class.c_natural },
        { other: :major_seventh, note: described_class.c_flat },
        { other: :perfect_octave, note: described_class.b_flat }
      ]
    end
  end
end
