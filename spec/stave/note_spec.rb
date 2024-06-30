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
                     accidental: Stave::Accidental.double_flat,
                     semitones: 0,
                     enharmonics: [
                       described_class.f_double_sharp,
                       described_class.g_natural
                     ]
  end

  describe ":a_flat" do
    subject(:note) { described_class.a_flat }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.a,
                     accidental: Stave::Accidental.flat,
                     semitones: 1,
                     enharmonics: [described_class.g_sharp]
  end

  describe ":a_natural" do
    subject(:note) { described_class.a_natural }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.a,
                     accidental: Stave::Accidental.natural,
                     semitones: 2,
                     enharmonics: [
                       described_class.b_double_flat,
                       described_class.g_double_sharp
                     ]
  end

  describe ":a_sharp" do
    subject(:note) { described_class.a_sharp }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.a,
                     accidental: Stave::Accidental.sharp,
                     semitones: 3,
                     enharmonics: [
                       described_class.b_flat,
                       described_class.c_double_flat
                     ]
  end

  describe ":a_double_sharp" do
    subject(:note) { described_class.a_double_sharp }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.a,
                     accidental: Stave::Accidental.double_sharp,
                     semitones: 4,
                     enharmonics: [
                       described_class.b_natural,
                       described_class.c_flat
                     ]
  end

  describe ":b_double_flat" do
    subject(:note) { described_class.b_double_flat }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.b,
                     accidental: Stave::Accidental.double_flat,
                     semitones: 2,
                     enharmonics: [
                       described_class.a_natural,
                       described_class.g_double_sharp
                     ]
  end

  describe ":b_flat" do
    subject(:note) { described_class.b_flat }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.b,
                     accidental: Stave::Accidental.flat,
                     semitones: 3,
                     enharmonics: [
                       described_class.a_sharp,
                       described_class.c_double_flat
                     ]
  end

  describe ":b_natural" do
    subject(:note) { described_class.b_natural }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.b,
                     accidental: Stave::Accidental.natural,
                     semitones: 4,
                     enharmonics: [
                       described_class.a_double_sharp,
                       described_class.c_flat
                     ]
  end

  describe ":b_sharp" do
    subject(:note) { described_class.b_sharp }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.b,
                     accidental: Stave::Accidental.sharp,
                     semitones: 5,
                     enharmonics: [
                       described_class.c_natural,
                       described_class.d_double_flat
                     ]
  end

  describe ":b_double_sharp" do
    subject(:note) { described_class.b_double_sharp }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.b,
                     accidental: Stave::Accidental.double_sharp,
                     semitones: 6,
                     enharmonics: [
                       described_class.c_sharp,
                       described_class.d_flat
                     ]
  end

  describe ":c_double_flat" do
    subject(:note) { described_class.c_double_flat }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.c,
                     accidental: Stave::Accidental.double_flat,
                     semitones: 3,
                     enharmonics: [
                       described_class.a_sharp,
                       described_class.b_flat
                     ]
  end

  describe ":c_flat" do
    subject(:note) { described_class.c_flat }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.c,
                     accidental: Stave::Accidental.flat,
                     semitones: 4,
                     enharmonics: [
                       described_class.a_double_sharp,
                       described_class.b_natural
                     ]
  end

  describe ":c_natural" do
    subject(:note) { described_class.c_natural }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.c,
                     accidental: Stave::Accidental.natural,
                     semitones: 5,
                     enharmonics: [
                       described_class.b_sharp,
                       described_class.d_double_flat
                     ]
  end

  describe ":c_sharp" do
    subject(:note) { described_class.c_sharp }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.c,
                     accidental: Stave::Accidental.sharp,
                     semitones: 6,
                     enharmonics: [
                       described_class.b_double_sharp,
                       described_class.d_flat
                     ]
  end

  describe ":c_double_sharp" do
    subject(:note) { described_class.c_double_sharp }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.c,
                     accidental: Stave::Accidental.double_sharp,
                     semitones: 7,
                     enharmonics: [
                       described_class.d_natural,
                       described_class.e_double_flat
                     ]
  end

  describe ":d_double_flat" do
    subject(:note) { described_class.d_double_flat }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.d,
                     accidental: Stave::Accidental.double_flat,
                     semitones: 5,
                     enharmonics: [
                       described_class.b_sharp,
                       described_class.c_natural
                     ]
  end

  describe ":d_flat" do
    subject(:note) { described_class.d_flat }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.d,
                     accidental: Stave::Accidental.flat,
                     semitones: 6,
                     enharmonics: [
                       described_class.b_double_sharp,
                       described_class.c_sharp
                     ]
  end

  describe ":d_natural" do
    subject(:note) { described_class.d_natural }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.d,
                     accidental: Stave::Accidental.natural,
                     semitones: 7,
                     enharmonics: [
                       described_class.c_double_sharp,
                       described_class.e_double_flat
                     ]
  end

  describe ":d_sharp" do
    subject(:note) { described_class.d_sharp }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.d,
                     accidental: Stave::Accidental.sharp,
                     semitones: 8,
                     enharmonics: [
                       described_class.e_flat,
                       described_class.f_double_flat
                     ]
  end

  describe ":d_double_sharp" do
    subject(:note) { described_class.d_double_sharp }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.d,
                     accidental: Stave::Accidental.double_sharp,
                     semitones: 9,
                     enharmonics: [
                       described_class.e_natural,
                       described_class.f_flat
                     ]
  end

  describe ":e_double_flat" do
    subject(:note) { described_class.e_double_flat }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.e,
                     accidental: Stave::Accidental.double_flat,
                     semitones: 7,
                     enharmonics: [
                       described_class.c_double_sharp,
                       described_class.d_natural
                     ]
  end

  describe ":e_flat" do
    subject(:note) { described_class.e_flat }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.e,
                     accidental: Stave::Accidental.flat,
                     semitones: 8,
                     enharmonics: [
                       described_class.d_sharp,
                       described_class.f_double_flat
                     ]
  end

  describe ":e_natural" do
    subject(:note) { described_class.e_natural }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.e,
                     accidental: Stave::Accidental.natural,
                     semitones: 9,
                     enharmonics: [
                       described_class.d_double_sharp,
                       described_class.f_flat
                     ]
  end

  describe ":e_sharp" do
    subject(:note) { described_class.e_sharp }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.e,
                     accidental: Stave::Accidental.sharp,
                     semitones: 10,
                     enharmonics: [
                       described_class.f_natural,
                       described_class.g_double_flat
                     ]
  end

  describe ":e_double_sharp" do
    subject(:note) { described_class.e_double_sharp }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.e,
                     accidental: Stave::Accidental.double_sharp,
                     semitones: 11,
                     enharmonics: [
                       described_class.f_sharp,
                       described_class.g_flat
                     ]
  end

  describe ":f_double_flat" do
    subject(:note) { described_class.f_double_flat }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.f,
                     accidental: Stave::Accidental.double_flat,
                     semitones: 8,
                     enharmonics: [
                       described_class.d_sharp,
                       described_class.e_flat
                     ]
  end

  describe ":f_flat" do
    subject(:note) { described_class.f_flat }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.f,
                     accidental: Stave::Accidental.flat,
                     semitones: 9,
                     enharmonics: [
                       described_class.d_double_sharp,
                       described_class.e_natural
                     ]
  end

  describe ":f_natural" do
    subject(:note) { described_class.f_natural }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.f,
                     accidental: Stave::Accidental.natural,
                     semitones: 10,
                     enharmonics: [
                       described_class.e_sharp,
                       described_class.g_double_flat
                     ]
  end

  describe ":f_sharp" do
    subject(:note) { described_class.f_sharp }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.f,
                     accidental: Stave::Accidental.sharp,
                     semitones: 11,
                     enharmonics: [
                       described_class.e_double_sharp,
                       described_class.g_flat
                     ]
  end

  describe ":f_double_sharp" do
    subject(:note) { described_class.f_double_sharp }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.f,
                     accidental: Stave::Accidental.double_sharp,
                     semitones: 0,
                     enharmonics: [
                       described_class.a_double_flat,
                       described_class.g_natural
                     ]
  end

  describe ":g_double_flat" do
    subject(:note) { described_class.g_double_flat }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.g,
                     accidental: Stave::Accidental.double_flat,
                     semitones: 10,
                     enharmonics: [
                       described_class.e_sharp,
                       described_class.f_natural
                     ]
  end

  describe ":g_flat" do
    subject(:note) { described_class.g_flat }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.g,
                     accidental: Stave::Accidental.flat,
                     semitones: 11,
                     enharmonics: [
                       described_class.e_double_sharp,
                       described_class.f_sharp
                     ]
  end

  describe ":g_natural" do
    subject(:note) { described_class.g_natural }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.g,
                     accidental: Stave::Accidental.natural,
                     semitones: 0,
                     enharmonics: [
                       described_class.a_double_flat,
                       described_class.f_double_sharp
                     ]
  end

  describe ":g_sharp" do
    subject(:note) { described_class.g_sharp }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.g,
                     accidental: Stave::Accidental.sharp,
                     semitones: 1,
                     enharmonics: [described_class.a_flat]
  end

  describe ":g_double_sharp" do
    subject(:note) { described_class.g_double_sharp }

    include_examples :has_attributes,
                     pitch: Stave::Pitch.g,
                     accidental: Stave::Accidental.double_sharp,
                     semitones: 2,
                     enharmonics: [
                       described_class.a_natural,
                       described_class.b_double_flat
                     ]
  end
end
