module Stave
  module Theory
    class Interval < Core::Lookup
      class Quality < Core::Lookup
        variant :diminished,
                transform: { major: -2, perfect: -1 },
                to_s: "d"

        variant :minor,
                transform: { major: -1, perfect: nil },
                to_s: "m"

        variant :major,
                transform: { major: 0, perfect: nil },
                to_s: "M"

        variant :perfect,
                transform: { major: nil, perfect: 0 },
                to_s: "P"

        variant :augmented,
                transform: { major: 1, perfect: 1 },
                to_s: "A"
      end

      class Number < Core::Lookup
        variant :one, to_i: 1, size: 0, perfect: true
        variant :two, to_i: 2, size: 2, perfect: false
        variant :three, to_i: 3, size: 4, perfect: false
        variant :four, to_i: 4, size: 5, perfect: true
        variant :five, to_i: 5, size: 7, perfect: true
        variant :six, to_i: 6, size: 9, perfect: false
        variant :seven, to_i: 7, size: 11, perfect: false
        variant :eight, to_i: 8, size: 12, perfect: true
        variant :nine, to_i: 9, size: 14, perfect: false
        variant :eleven, to_i: 11, size: 17, perfect: true
        variant :thirteen, to_i: 13, size: 21, perfect: false

        def degree
          to_i >= 8 ? to_i - 7 : to_i
        end

        def to_s = to_i.to_s

        def perfect? = perfect
      end

      with_options number: Number.one do
        variant :perfect_unison, quality: Quality.perfect
      end

      with_options number: Number.two do
        variant :minor_second,     quality: Quality.minor
        variant :major_second,     quality: Quality.major
        variant :augmented_second, quality: Quality.augmented
      end

      with_options number: Number.three do
        variant :diminished_third, quality: Quality.diminished
        variant :minor_third,      quality: Quality.minor
        variant :major_third,      quality: Quality.major
        variant :augmented_third,  quality: Quality.augmented
      end

      with_options number: Number.four do
        variant :diminished_fourth, quality: Quality.diminished
        variant :perfect_fourth,    quality: Quality.perfect
        variant :augmented_fourth,  quality: Quality.augmented
      end

      with_options number: Number.five do
        variant :diminished_fifth, quality: Quality.diminished
        variant :perfect_fifth,    quality: Quality.perfect
        variant :augmented_fifth,  quality: Quality.augmented
      end

      with_options number: Number.six do
        variant :diminished_sixth, quality: Quality.diminished
        variant :minor_sixth,      quality: Quality.minor
        variant :major_sixth,      quality: Quality.major
        variant :augmented_sixth,  quality: Quality.augmented
      end

      with_options number: Number.seven do
        variant :diminished_seventh, quality: Quality.diminished
        variant :minor_seventh,      quality: Quality.minor
        variant :major_seventh,      quality: Quality.major
      end

      with_options number: Number.eight do
        variant :perfect_octave, quality: Quality.perfect
      end

      with_options number: Number.nine do
        variant :minor_ninth,     quality: Quality.minor
        variant :major_ninth,     quality: Quality.major
        variant :augmented_ninth, quality: Quality.augmented
      end

      with_options number: Number.eleven do
        variant :diminished_eleventh, quality: Quality.diminished
        variant :perfect_eleventh,    quality: Quality.perfect
        variant :augmented_eleventh,  quality: Quality.augmented
      end

      with_options number: Number.thirteen do
        variant :diminished_thirteenth, quality: Quality.diminished
        variant :minor_thirteenth,      quality: Quality.minor
        variant :major_thirteenth,      quality: Quality.major
        variant :augmented_thirteenth,  quality: Quality.augmented
      end

      def to_i
        transform_key = number.perfect? ? :perfect : :major

        number.size + quality.transform[transform_key]
      end

      def to_s
        "#{quality}#{number}"
      end
    end
  end
end