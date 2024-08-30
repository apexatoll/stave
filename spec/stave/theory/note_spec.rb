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
end
