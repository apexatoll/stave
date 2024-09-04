module Stave
  module Theory
    class Accidental < Core::Lookup
      variant :double_flat,  transform: -2, to_s: "♭♭"
      variant :flat,         transform: -1, to_s: "♭"
      variant :natural,      transform: 0,  to_s: ""
      variant :sharp,        transform: 1,  to_s: "♯"
      variant :double_sharp, transform: 2,  to_s: "♯♯"

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
