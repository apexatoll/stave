module Stave
  class Scale
    attr_reader :tonic, :scale_type

    def initialize(tonic:, scale_type:)
      @tonic = tonic
      @scale_type = scale_type
    end

    def notes
      @notes ||= map_notes!
    end

    private

    def map_notes!
      scale_type.offsets.map.with_index do |offset, index|
        new_note  = tonic + offset
        new_pitch = tonic.pitch + index

        new_note.enharmonic_at(new_pitch)
      end
    end
  end
end
