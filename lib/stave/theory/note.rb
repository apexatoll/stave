module Stave
  module Theory
    class Note < Core::Lookup
      class PitchClass < Core::Lookup
        variant :c, to_s: "C", to_i: 0
        variant :d, to_s: "D", to_i: 2
        variant :e, to_s: "E", to_i: 4
        variant :f, to_s: "F", to_i: 5
        variant :g, to_s: "G", to_i: 7
        variant :a, to_s: "A", to_i: 9
        variant :b, to_s: "B", to_i: 11
      end
    end
  end
end
