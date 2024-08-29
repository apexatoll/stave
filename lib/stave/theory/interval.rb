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
        variant :one, to_i: 1, size: 0
        variant :two, to_i: 2, size: 2
        variant :three, to_i: 3, size: 4
        variant :four, to_i: 4, size: 5
        variant :five, to_i: 5, size: 7
        variant :six, to_i: 6, size: 9
        variant :seven, to_i: 7, size: 11
        variant :eight, to_i: 8, size: 12
        variant :nine, to_i: 9, size: 14
        variant :eleven, to_i: 11, size: 17
        variant :thirteen, to_i: 13, size: 21

        def degree
          to_i >= 8 ? to_i - 7 : to_i
        end

        def to_s = to_i.to_s
      end
    end
  end
end
