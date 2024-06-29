module Stave
  class Accidental < Core::Lookup
    variant :double_flat, offset: -2
    variant :flat, offset: -1
    variant :natural, offset: 0
    variant :sharp, offset: 1
    variant :double_sharp, offset: 2
  end
end
