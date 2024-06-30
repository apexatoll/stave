module Stave
  class Scale
    attr_reader :tonic, :scale_type

    def initialize(tonic:, scale_type:)
      @tonic = tonic
      @scale_type = scale_type
    end
  end
end
