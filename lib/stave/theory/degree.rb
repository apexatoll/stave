module Stave
  module Theory
    class Degree < Core::Lookup
      variant :root,
              interval: Interval.perfect_unison,
              accidental: Accidental.natural

      variant :flat_two,
              interval: Interval.minor_second,
              accidental: Accidental.flat

      variant :two,
              interval: Interval.major_second,
              accidental: Accidental.natural

      variant :sharp_two,
              interval: Interval.augmented_second,
              accidental: Accidental.sharp

      variant :flat_three,
              interval: Interval.minor_third,
              accidental: Accidental.flat

      variant :three,
              interval: Interval.major_third,
              accidental: Accidental.natural

      variant :sharp_three,
              interval: Interval.augmented_third,
              accidental: Accidental.sharp

      variant :flat_four,
              interval: Interval.diminished_fourth,
              accidental: Accidental.flat

      variant :four,
              interval: Interval.perfect_fourth,
              accidental: Accidental.natural

      variant :sharp_four,
              interval: Interval.augmented_fourth,
              accidental: Accidental.sharp

      variant :flat_five,
              interval: Interval.diminished_fifth,
              accidental: Accidental.flat

      variant :five,
              interval: Interval.perfect_fifth,
              accidental: Accidental.natural

      variant :sharp_five,
              interval: Interval.augmented_fifth,
              accidental: Accidental.sharp

      variant :flat_six,
              interval: Interval.minor_sixth,
              accidental: Accidental.flat

      variant :six,
              interval: Interval.major_sixth,
              accidental: Accidental.natural

      variant :sharp_six,
              interval: Interval.augmented_sixth,
              accidental: Accidental.sharp

      variant :flat_seven,
              interval: Interval.minor_seventh,
              accidental: Accidental.flat

      variant :seven,
              interval: Interval.major_seventh,
              accidental: Accidental.natural

      variant :octave,
              interval: Interval.perfect_octave,
              accidental: Accidental.natural

      def to_s
        return "R" if (to_i % 12).zero?

        "#{accidental}#{interval.number}"
      end

      def to_i
        interval.to_i
      end
    end
  end
end
