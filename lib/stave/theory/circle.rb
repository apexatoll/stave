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
    end
  end
end
