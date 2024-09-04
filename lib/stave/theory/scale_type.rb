module Stave
  module Theory
    class ScaleType < Core::DegreeCollection
      variant :major, degrees: [
        Degree.root,
        Degree.two,
        Degree.three,
        Degree.four,
        Degree.five,
        Degree.six,
        Degree.seven,
        Degree.octave
      ]
    end
  end
end
