module Stave
  class Interval < Core::Lookup
    variant :semitone, size: 1
    variant :tone, size: 2
  end
end
