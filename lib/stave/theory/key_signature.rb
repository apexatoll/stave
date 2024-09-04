module Stave
  module Theory
    class KeySignature < Core::Lookup
      class Group < Core::Lookup
        variant :flats, accidental: Accidental.flat, to_s: "flats"
        variant :natural, accidental: Accidental.natural, to_s: ""
        variant :sharps, accidental: Accidental.sharp, to_s: "sharps"
      end

      variant :natural, group: Group.natural, flat_count: 0, sharp_count: 0

      with_options group: Group.flats, sharp_count: 0 do
        variant :one_flat, flat_count: 1
        variant :two_flats, flat_count: 2
        variant :three_flats, flat_count: 3
        variant :four_flats, flat_count: 4
        variant :five_flats, flat_count: 5
        variant :six_flats, flat_count: 6
        variant :seven_flats, flat_count: 7
      end

      with_options group: Group.sharps, flat_count: 0 do
        variant :one_sharp, sharp_count: 1
        variant :two_sharps, sharp_count: 2
        variant :three_sharps, sharp_count: 3
        variant :four_sharps, sharp_count: 4
        variant :five_sharps, sharp_count: 5
        variant :six_sharps, sharp_count: 6
        variant :seven_sharps, sharp_count: 7
      end

      def self.parse(scale)
        accidentals = scale.uniq.map(&:accidental)
        flat_count  = accidentals.count(&:flat?)
        sharp_count = accidentals.count(&:sharp?)

        find_by(flat_count:, sharp_count:)
      end
    end
  end
end
