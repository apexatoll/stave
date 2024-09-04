module Stave
  module Theory
    class Circle
      attr_reader :type, :root

      def initialize(type:, root:)
        @type = type
        @root = root
      end

      def notes
        7.times.inject([root]) do |notes, _|
          notes + [notes.last + type.step]
        end
      end

      def key_signatures
        notes.map do |root|
          Scale.new(type: ScaleType.major, root:).key_signature
        end
      end
    end
  end
end
