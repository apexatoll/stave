module Stave
  module Core
    class DegreeCollection < Lookup
      # Set via the variants interface.
      def degrees
        raise NotImplementedError
      end

      def count
        uniq.count
      end

      def intervals
        degrees.map(&:interval)
      end

      def rotate(position)
        return degrees if position == 1

        uniq.rotate(position - 1).tap do |degrees|
          degrees << degrees.first
        end
      end

      def steps
        intervals.each_cons(2).map { |pair| pair.reverse.reduce(:-) }
      end

      def uniq
        degrees.uniq(&:position)
      end
    end
  end
end
