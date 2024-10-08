module Stave
  module Theory
    class Note < Core::Lookup
      class PitchClass < Core::Lookup
        variant :c, index: 0, symbol: "C", to_i: 0
        variant :d, index: 1, symbol: "D", to_i: 2
        variant :e, index: 2, symbol: "E", to_i: 4
        variant :f, index: 3, symbol: "F", to_i: 5
        variant :g, index: 4, symbol: "G", to_i: 7
        variant :a, index: 5, symbol: "A", to_i: 9
        variant :b, index: 6, symbol: "B", to_i: 11

        def +(other)
          case other
          when Integer then PitchClass.find_by(index: (index + other) % 7)
          else raise TypeError
          end
        end

        def -(other)
          case other
          when Integer then PitchClass.find_by(index: (index - other) % 7)
          else raise TypeError
          end
        end
      end

      with_options pitch_class: PitchClass.a do
        variant :a_double_flat,  accidental: Accidental.double_flat
        variant :a_flat,         accidental: Accidental.flat
        variant :a_natural,      accidental: Accidental.natural
        variant :a_sharp,        accidental: Accidental.sharp
        variant :a_double_sharp, accidental: Accidental.double_sharp
      end

      with_options pitch_class: PitchClass.b do
        variant :b_double_flat,  accidental: Accidental.double_flat
        variant :b_flat,         accidental: Accidental.flat
        variant :b_natural,      accidental: Accidental.natural
        variant :b_sharp,        accidental: Accidental.sharp
        variant :b_double_sharp, accidental: Accidental.double_sharp
      end

      with_options pitch_class: PitchClass.c do
        variant :c_double_flat,  accidental: Accidental.double_flat
        variant :c_flat,         accidental: Accidental.flat
        variant :c_natural,      accidental: Accidental.natural
        variant :c_sharp,        accidental: Accidental.sharp
        variant :c_double_sharp, accidental: Accidental.double_sharp
      end

      with_options pitch_class: PitchClass.d do
        variant :d_double_flat,  accidental: Accidental.double_flat
        variant :d_flat,         accidental: Accidental.flat
        variant :d_natural,      accidental: Accidental.natural
        variant :d_sharp,        accidental: Accidental.sharp
        variant :d_double_sharp, accidental: Accidental.double_sharp
      end

      with_options pitch_class: PitchClass.e do
        variant :e_double_flat,  accidental: Accidental.double_flat
        variant :e_flat,         accidental: Accidental.flat
        variant :e_natural,      accidental: Accidental.natural
        variant :e_sharp,        accidental: Accidental.sharp
        variant :e_double_sharp, accidental: Accidental.double_sharp
      end

      with_options pitch_class: PitchClass.f do
        variant :f_double_flat,  accidental: Accidental.double_flat
        variant :f_flat,         accidental: Accidental.flat
        variant :f_natural,      accidental: Accidental.natural
        variant :f_sharp,        accidental: Accidental.sharp
        variant :f_double_sharp, accidental: Accidental.double_sharp
      end

      with_options pitch_class: PitchClass.g do
        variant :g_double_flat,  accidental: Accidental.double_flat
        variant :g_flat,         accidental: Accidental.flat
        variant :g_natural,      accidental: Accidental.natural
        variant :g_sharp,        accidental: Accidental.sharp
        variant :g_double_sharp, accidental: Accidental.double_sharp
      end

      def +(other)
        case other
        when Interval then note_above(other)
        when Integer then Note.find_by(to_i: (to_i + other) % 12)
        else raise
        end
      end

      def -(other)
        case other
        when Interval then note_below(other)
        when Integer then Note.find_by(to_i: (to_i - other) % 12)
        else raise
        end
      end

      def symbol
        "#{pitch_class.symbol}#{accidental.symbol}"
      end

      def to_i
        (pitch_class.to_i + accidental.transform) % 12
      end

      def note_above(interval)
        target_pitch_class = pitch_class + interval.number.offset
        target_integer = (to_i + interval.to_i) % 12

        Note.find_by(pitch_class: target_pitch_class, to_i: target_integer)
      end

      def note_below(interval)
        note_above(interval.invert!)
      end

      def self.flats
        where(accidental: Accidental.flat)
      end

      def self.naturals
        where(accidental: Accidental.natural)
      end

      def self.sharps
        where(accidental: Accidental.sharp)
      end

      def self.single_accidental
        flats + naturals + sharps
      end

      def self.circle_of_fifths
        Circle.new(type: CircleType.fifths, root: Note.c_natural).notes
      end
    end
  end
end
