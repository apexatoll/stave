RSpec.describe Stave::Note do
  shared_examples :has_attributes do |**attributes|
    it "sets the expected attributes" do
      expect(note).to have_attributes(**attributes)
    end
  end

  describe ":a_double_flat" do
    subject(:note) { described_class.a_double_flat }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.a,
                     accidental: Stave::Accidental.double_flat
  end

  describe ":a_flat" do
    subject(:note) { described_class.a_flat }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.a,
                     accidental: Stave::Accidental.flat
  end

  describe ":a_natural" do
    subject(:note) { described_class.a_natural }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.a,
                     accidental: Stave::Accidental.natural
  end

  describe ":a_sharp" do
    subject(:note) { described_class.a_sharp }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.a,
                     accidental: Stave::Accidental.sharp
  end

  describe ":a_double_sharp" do
    subject(:note) { described_class.a_double_sharp }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.a,
                     accidental: Stave::Accidental.double_sharp
  end

  describe ":b_double_flat" do
    subject(:note) { described_class.b_double_flat }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.b,
                     accidental: Stave::Accidental.double_flat
  end

  describe ":b_flat" do
    subject(:note) { described_class.b_flat }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.b,
                     accidental: Stave::Accidental.flat
  end

  describe ":b_natural" do
    subject(:note) { described_class.b_natural }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.b,
                     accidental: Stave::Accidental.natural
  end

  describe ":b_sharp" do
    subject(:note) { described_class.b_sharp }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.b,
                     accidental: Stave::Accidental.sharp
  end

  describe ":b_double_sharp" do
    subject(:note) { described_class.b_double_sharp }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.b,
                     accidental: Stave::Accidental.double_sharp
  end

  describe ":c_double_flat" do
    subject(:note) { described_class.c_double_flat }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.c,
                     accidental: Stave::Accidental.double_flat
  end

  describe ":c_flat" do
    subject(:note) { described_class.c_flat }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.c,
                     accidental: Stave::Accidental.flat
  end

  describe ":c_natural" do
    subject(:note) { described_class.c_natural }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.c,
                     accidental: Stave::Accidental.natural
  end

  describe ":c_sharp" do
    subject(:note) { described_class.c_sharp }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.c,
                     accidental: Stave::Accidental.sharp
  end

  describe ":c_double_sharp" do
    subject(:note) { described_class.c_double_sharp }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.c,
                     accidental: Stave::Accidental.double_sharp
  end

  describe ":d_double_flat" do
    subject(:note) { described_class.d_double_flat }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.d,
                     accidental: Stave::Accidental.double_flat
  end

  describe ":d_flat" do
    subject(:note) { described_class.d_flat }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.d,
                     accidental: Stave::Accidental.flat
  end

  describe ":d_natural" do
    subject(:note) { described_class.d_natural }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.d,
                     accidental: Stave::Accidental.natural
  end

  describe ":d_sharp" do
    subject(:note) { described_class.d_sharp }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.d,
                     accidental: Stave::Accidental.sharp
  end

  describe ":d_double_sharp" do
    subject(:note) { described_class.d_double_sharp }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.d,
                     accidental: Stave::Accidental.double_sharp
  end

  describe ":e_double_flat" do
    subject(:note) { described_class.e_double_flat }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.e,
                     accidental: Stave::Accidental.double_flat
  end

  describe ":e_flat" do
    subject(:note) { described_class.e_flat }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.e,
                     accidental: Stave::Accidental.flat
  end

  describe ":e_natural" do
    subject(:note) { described_class.e_natural }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.e,
                     accidental: Stave::Accidental.natural
  end

  describe ":e_sharp" do
    subject(:note) { described_class.e_sharp }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.e,
                     accidental: Stave::Accidental.sharp
  end

  describe ":e_double_sharp" do
    subject(:note) { described_class.e_double_sharp }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.e,
                     accidental: Stave::Accidental.double_sharp
  end

  describe ":f_double_flat" do
    subject(:note) { described_class.f_double_flat }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.f,
                     accidental: Stave::Accidental.double_flat
  end

  describe ":f_flat" do
    subject(:note) { described_class.f_flat }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.f,
                     accidental: Stave::Accidental.flat
  end

  describe ":f_natural" do
    subject(:note) { described_class.f_natural }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.f,
                     accidental: Stave::Accidental.natural
  end

  describe ":f_sharp" do
    subject(:note) { described_class.f_sharp }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.f,
                     accidental: Stave::Accidental.sharp
  end

  describe ":f_double_sharp" do
    subject(:note) { described_class.f_double_sharp }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.f,
                     accidental: Stave::Accidental.double_sharp
  end

  describe ":g_double_flat" do
    subject(:note) { described_class.g_double_flat }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.g,
                     accidental: Stave::Accidental.double_flat
  end

  describe ":g_flat" do
    subject(:note) { described_class.g_flat }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.g,
                     accidental: Stave::Accidental.flat
  end

  describe ":g_natural" do
    subject(:note) { described_class.g_natural }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.g,
                     accidental: Stave::Accidental.natural
  end

  describe ":g_sharp" do
    subject(:note) { described_class.g_sharp }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.g,
                     accidental: Stave::Accidental.sharp
  end

  describe ":g_double_sharp" do
    subject(:note) { described_class.g_double_sharp }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.g,
                     accidental: Stave::Accidental.double_sharp
  end
end
