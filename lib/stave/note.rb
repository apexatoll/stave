module Stave
  class Note < Core::Lookup
    variant :a_double_flat,  pitch: Pitch.a, accidental: Accidental.double_flat
    variant :a_flat,         pitch: Pitch.a, accidental: Accidental.flat
    variant :a_natural,      pitch: Pitch.a, accidental: Accidental.natural
    variant :a_sharp,        pitch: Pitch.a, accidental: Accidental.sharp
    variant :a_double_sharp, pitch: Pitch.a, accidental: Accidental.double_sharp

    variant :b_double_flat,  pitch: Pitch.b, accidental: Accidental.double_flat
    variant :b_flat,         pitch: Pitch.b, accidental: Accidental.flat
    variant :b_natural,      pitch: Pitch.b, accidental: Accidental.natural
    variant :b_sharp,        pitch: Pitch.b, accidental: Accidental.sharp
    variant :b_double_sharp, pitch: Pitch.b, accidental: Accidental.double_sharp

    variant :c_double_flat,  pitch: Pitch.c, accidental: Accidental.double_flat
    variant :c_flat,         pitch: Pitch.c, accidental: Accidental.flat
    variant :c_natural,      pitch: Pitch.c, accidental: Accidental.natural
    variant :c_sharp,        pitch: Pitch.c, accidental: Accidental.sharp
    variant :c_double_sharp, pitch: Pitch.c, accidental: Accidental.double_sharp

    variant :d_double_flat,  pitch: Pitch.d, accidental: Accidental.double_flat
    variant :d_flat,         pitch: Pitch.d, accidental: Accidental.flat
    variant :d_natural,      pitch: Pitch.d, accidental: Accidental.natural
    variant :d_sharp,        pitch: Pitch.d, accidental: Accidental.sharp
    variant :d_double_sharp, pitch: Pitch.d, accidental: Accidental.double_sharp

    variant :e_double_flat,  pitch: Pitch.e, accidental: Accidental.double_flat
    variant :e_flat,         pitch: Pitch.e, accidental: Accidental.flat
    variant :e_natural,      pitch: Pitch.e, accidental: Accidental.natural
    variant :e_sharp,        pitch: Pitch.e, accidental: Accidental.sharp
    variant :e_double_sharp, pitch: Pitch.e, accidental: Accidental.double_sharp

    variant :f_double_flat,  pitch: Pitch.f, accidental: Accidental.double_flat
    variant :f_flat,         pitch: Pitch.f, accidental: Accidental.flat
    variant :f_natural,      pitch: Pitch.f, accidental: Accidental.natural
    variant :f_sharp,        pitch: Pitch.f, accidental: Accidental.sharp
    variant :f_double_sharp, pitch: Pitch.f, accidental: Accidental.double_sharp

    variant :g_double_flat,  pitch: Pitch.g, accidental: Accidental.double_flat
    variant :g_flat,         pitch: Pitch.g, accidental: Accidental.flat
    variant :g_natural,      pitch: Pitch.g, accidental: Accidental.natural
    variant :g_sharp,        pitch: Pitch.g, accidental: Accidental.sharp
    variant :g_double_sharp, pitch: Pitch.g, accidental: Accidental.double_sharp

    def enharmonics
      @enharmonics ||= find_enharmonics!
    end

    def semitones
      @semitones ||= calculate_semitones!
    end

    private

    def calculate_semitones!
      semitones = pitch.semitones + accidental.offset + 2
      semitones += 12 while semitones.negative?
      semitones -= 12 while semitones >= 12

      semitones
    end

    def find_enharmonics!
      Note.all.select do |note|
        note.semitones == semitones && note.name != name
      end
    end
  end
end
