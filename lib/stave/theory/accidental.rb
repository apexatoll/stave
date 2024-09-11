module Stave
  module Theory
    class Accidental < Core::Lookup
      variant :double_flat,  transform: -2, symbol: "♭♭"
      variant :flat,         transform: -1, symbol: "♭"
      variant :natural,      transform: 0,  symbol: ""
      variant :sharp,        transform: 1,  symbol: "♯"
      variant :double_sharp, transform: 2,  symbol: "♯♯"

      def flat?
        transform.negative?
      end

      def natural?
        transform.zero?
      end

      def sharp?
        transform.positive?
      end
    end
  end
end
