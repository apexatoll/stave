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

      def relative_rotate(position)
        return degrees if position == 1

        rotated_degrees = rotate(position)

        rotated_degrees.map do |degree|
          degree - rotated_degrees.first
        end
      end

      def steps
        intervals.each_cons(2).map { |pair| pair.reverse.reduce(:-) }
      end

      def uniq
        degrees.uniq(&:position)
      end

      def self.class_key
        to_s.delete_prefix("Stave::Theory::")
            .gsub(/([a-z])([A-Z])/, "\\1_\\2")
            .downcase
            .to_sym
      end
    end
  end
end
