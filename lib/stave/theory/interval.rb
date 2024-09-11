module Stave
  module Theory
    class Interval < Core::Lookup
      class Quality < Core::Lookup
        variant :diminished,
                transform: { major: -2, perfect: -1 },
                inversion: :augmented,
                symbol: "d"

        variant :minor,
                transform: { major: -1, perfect: nil },
                inversion: :major,
                symbol: "m"

        variant :major,
                transform: { major: 0, perfect: nil },
                inversion: :minor,
                symbol: "M"

        variant :perfect,
                transform: { major: nil, perfect: 0 },
                inversion: :perfect,
                symbol: "P"

        variant :augmented,
                transform: { major: 1, perfect: 1 },
                inversion: :diminished,
                symbol: "A"

        def invert!
          Quality.new(inversion)
        end
      end

      class Number < Core::Lookup
        variant :one, to_i: 1, size: 0, perfect?: true
        variant :two, to_i: 2, size: 2, perfect?: false
        variant :three, to_i: 3, size: 4, perfect?: false
        variant :four, to_i: 4, size: 5, perfect?: true
        variant :five, to_i: 5, size: 7, perfect?: true
        variant :six, to_i: 6, size: 9, perfect?: false
        variant :seven, to_i: 7, size: 11, perfect?: false
        variant :eight, to_i: 8, size: 12, perfect?: true
        variant :nine, to_i: 9, size: 14, perfect?: false
        variant :eleven, to_i: 11, size: 17, perfect?: true
        variant :thirteen, to_i: 13, size: 21, perfect?: false

        def symbol = to_i.to_s

        def compound? = size >= 12

        def octave? = (size % 12).zero?

        def degree = compound? ? to_i - 7 : to_i

        def offset = to_i - 1

        def +(other)
          target_i = to_i + other.relative.offset
          target_i -= 7 while target_i >= 8

          Number.find_by(to_i: target_i)
        end

        def relative
          target_i = to_i
          target_i -= 7 while target_i >= 8

          Number.find_by(to_i: target_i)
        end

        def invert!
          return self if octave?

          Number.find_by(degree: 9 - degree)
        end

        def self.between(note, other_note)
          target = other_note.pitch_class.index - note.pitch_class.index + 1
          target += 7 unless target.positive?

          find_by(to_i: target)
        end
      end

      with_options number: Number.one, scope: :unisons do
        variant :perfect_unison, quality: Quality.perfect
      end

      with_options number: Number.two, scope: :seconds do
        variant :minor_second,     quality: Quality.minor
        variant :major_second,     quality: Quality.major
        variant :augmented_second, quality: Quality.augmented
      end

      with_options number: Number.three, scope: :thirds do
        variant :diminished_third, quality: Quality.diminished
        variant :minor_third,      quality: Quality.minor
        variant :major_third,      quality: Quality.major
        variant :augmented_third,  quality: Quality.augmented
      end

      with_options number: Number.four, scope: :fourths do
        variant :diminished_fourth, quality: Quality.diminished
        variant :perfect_fourth,    quality: Quality.perfect
        variant :augmented_fourth,  quality: Quality.augmented
      end

      with_options number: Number.five, scope: :fifths do
        variant :diminished_fifth, quality: Quality.diminished
        variant :perfect_fifth,    quality: Quality.perfect
        variant :augmented_fifth,  quality: Quality.augmented
      end

      with_options number: Number.six, scope: :sixths do
        variant :diminished_sixth, quality: Quality.diminished
        variant :minor_sixth,      quality: Quality.minor
        variant :major_sixth,      quality: Quality.major
        variant :augmented_sixth,  quality: Quality.augmented
      end

      with_options number: Number.seven, scope: :sevenths do
        variant :diminished_seventh, quality: Quality.diminished
        variant :minor_seventh,      quality: Quality.minor
        variant :major_seventh,      quality: Quality.major
      end

      with_options number: Number.eight, scope: :octaves do
        variant :perfect_octave, quality: Quality.perfect
      end

      with_options number: Number.nine, scope: :ninths do
        variant :minor_ninth,     quality: Quality.minor
        variant :major_ninth,     quality: Quality.major
        variant :augmented_ninth, quality: Quality.augmented
      end

      with_options number: Number.eleven, scope: :elevenths do
        variant :diminished_eleventh, quality: Quality.diminished
        variant :perfect_eleventh,    quality: Quality.perfect
        variant :augmented_eleventh,  quality: Quality.augmented
      end

      with_options number: Number.thirteen, scope: :thirteenths do
        variant :diminished_thirteenth, quality: Quality.diminished
        variant :minor_thirteenth,      quality: Quality.minor
        variant :major_thirteenth,      quality: Quality.major
        variant :augmented_thirteenth,  quality: Quality.augmented
      end

      def to_i
        transform_key = number.perfect? ? :perfect : :major

        number.size + quality.transform[transform_key]
      end

      def symbol
        "#{quality.symbol}#{number.symbol}"
      end

      def +(other)
        target_number = number + other.number
        target_i = (to_i + other.to_i) % 12

        Interval.find_by(number: target_number, to_i: target_i)
      end

      def -(other)
        self + other.invert!
      end

      def invert!
        Interval.find_by(number: number.invert!, quality: quality.invert!)
      end

      def self.between(note, other_note)
        number = Number.between(note, other_note)
        to_i = other_note.to_i - note.to_i
        to_i += 12 if to_i.negative?

        Interval.find_by(number:, to_i:)
      end
    end
  end
end
