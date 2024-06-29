module Stave
  class Pitch < Core::Lookup
    variant :a, ordering: 0, semitones: 0
    variant :b, ordering: 1, semitones: 2
    variant :c, ordering: 2, semitones: 3
    variant :d, ordering: 3, semitones: 5
    variant :e, ordering: 4, semitones: 7
    variant :f, ordering: 5, semitones: 8
    variant :g, ordering: 6, semitones: 10

    def +(other)
      index = (ordering + other) % self.class.order.length
      pitch = self.class.order[index]

      self.class.new(pitch)
    end

    def -(other)
      index = (ordering - other) % self.class.order.length
      pitch = self.class.order[index]

      self.class.new(pitch)
    end

    def self.order
      variants
        .sort_by { |variant| variant.attributes[:ordering] }
        .map(&:name)
    end
  end
end
