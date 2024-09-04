module Stave
  module Theory
    class CircleType < Core::Lookup
      variant :fourths, step: Interval.perfect_fourth
      variant :fifths, step: Interval.perfect_fifth
    end
  end
end
