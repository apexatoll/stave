RSpec.describe Stave::Scale do
  subject(:scale) { described_class.new(tonic:, scale_type:) }

  describe "#notes" do
    subject(:notes) { scale.notes }

    shared_examples :sets_notes do |expected|
      let(:note_names) { notes.map(&:name) }

      it "sets the expected notes" do
        expect(note_names).to eq(expected)
      end
    end

    describe "Ab" do
      let(:tonic) { Stave::Note.a_flat }

      describe "major" do
        let(:scale_type) { Stave::ScaleType.major }

        include_examples :sets_notes, %i[
          a_flat
          b_flat
          c_natural
          d_flat
          e_flat
          f_natural
          g_natural
          a_flat
        ]
      end

      describe "minor" do
        let(:scale_type) { Stave::ScaleType.minor }

        include_examples :sets_notes, %i[
          a_flat
          b_flat
          c_flat
          d_flat
          e_flat
          f_flat
          g_flat
          a_flat
        ]
      end
    end

    describe "A" do
      let(:tonic) { Stave::Note.a_natural }

      describe "major" do
        let(:scale_type) { Stave::ScaleType.major }

        include_examples :sets_notes, %i[
          a_natural
          b_natural
          c_sharp
          d_natural
          e_natural
          f_sharp
          g_sharp
          a_natural
        ]
      end

      describe "minor" do
        let(:scale_type) { Stave::ScaleType.minor }

        include_examples :sets_notes, %i[
          a_natural
          b_natural
          c_natural
          d_natural
          e_natural
          f_natural
          g_natural
          a_natural
        ]
      end
    end

    describe "A#" do
      let(:tonic) { Stave::Note.a_sharp }

      describe "major" do
        let(:scale_type) { Stave::ScaleType.major }

        include_examples :sets_notes, %i[
          a_sharp
          b_sharp
          c_double_sharp
          d_sharp
          e_sharp
          f_double_sharp
          g_double_sharp
          a_sharp
        ]
      end

      describe "minor" do
        let(:scale_type) { Stave::ScaleType.minor }

        include_examples :sets_notes, %i[
          a_sharp
          b_sharp
          c_sharp
          d_sharp
          e_sharp
          f_sharp
          g_sharp
          a_sharp
        ]
      end
    end

    describe "Bb" do
      let(:tonic) { Stave::Note.b_flat }

      describe "major" do
        let(:scale_type) { Stave::ScaleType.major }

        include_examples :sets_notes, %i[
          b_flat
          c_natural
          d_natural
          e_flat
          f_natural
          g_natural
          a_natural
          b_flat
        ]
      end

      describe "minor" do
        let(:scale_type) { Stave::ScaleType.minor }

        include_examples :sets_notes, %i[
          b_flat
          c_natural
          d_flat
          e_flat
          f_natural
          g_flat
          a_flat
          b_flat
        ]
      end
    end

    describe "B" do
      let(:tonic) { Stave::Note.b_natural }

      describe "major" do
        let(:scale_type) { Stave::ScaleType.major }

        include_examples :sets_notes, %i[
          b_natural
          c_sharp
          d_sharp
          e_natural
          f_sharp
          g_sharp
          a_sharp
          b_natural
        ]
      end

      describe "minor" do
        let(:scale_type) { Stave::ScaleType.minor }

        include_examples :sets_notes, %i[
          b_natural
          c_sharp
          d_natural
          e_natural
          f_sharp
          g_natural
          a_natural
          b_natural
        ]
      end
    end

    describe "B#" do
      let(:tonic) { Stave::Note.b_sharp }

      describe "major" do
        let(:scale_type) { Stave::ScaleType.major }

        include_examples :sets_notes, %i[
          b_sharp
          c_double_sharp
          d_double_sharp
          e_sharp
          f_double_sharp
          g_double_sharp
          a_double_sharp
          b_sharp
        ]
      end

      describe "minor" do
        let(:scale_type) { Stave::ScaleType.minor }

        include_examples :sets_notes, %i[
          b_sharp
          c_double_sharp
          d_sharp
          e_sharp
          f_double_sharp
          g_sharp
          a_sharp
          b_sharp
        ]
      end
    end

    describe "Cb" do
      let(:tonic) { Stave::Note.c_flat }

      describe "major" do
        let(:scale_type) { Stave::ScaleType.major }

        include_examples :sets_notes, %i[
          c_flat
          d_flat
          e_flat
          f_flat
          g_flat
          a_flat
          b_flat
          c_flat
        ]
      end

      describe "minor" do
        let(:scale_type) { Stave::ScaleType.minor }

        include_examples :sets_notes, %i[
          c_flat
          d_flat
          e_double_flat
          f_flat
          g_flat
          a_double_flat
          b_double_flat
          c_flat
        ]
      end
    end

    describe "C" do
      let(:tonic) { Stave::Note.c_natural }

      describe "major" do
        let(:scale_type) { Stave::ScaleType.major }

        include_examples :sets_notes, %i[
          c_natural
          d_natural
          e_natural
          f_natural
          g_natural
          a_natural
          b_natural
          c_natural
        ]
      end

      describe "minor" do
        let(:scale_type) { Stave::ScaleType.minor }

        include_examples :sets_notes, %i[
          c_natural
          d_natural
          e_flat
          f_natural
          g_natural
          a_flat
          b_flat
          c_natural
        ]
      end
    end

    describe "C#" do
      let(:tonic) { Stave::Note.c_sharp }

      describe "major" do
        let(:scale_type) { Stave::ScaleType.major }

        include_examples :sets_notes, %i[
          c_sharp
          d_sharp
          e_sharp
          f_sharp
          g_sharp
          a_sharp
          b_sharp
          c_sharp
        ]
      end

      describe "minor" do
        let(:scale_type) { Stave::ScaleType.minor }

        include_examples :sets_notes, %i[
          c_sharp
          d_sharp
          e_natural
          f_sharp
          g_sharp
          a_natural
          b_natural
          c_sharp
        ]
      end
    end

    describe "Db" do
      let(:tonic) { Stave::Note.d_flat }

      describe "major" do
        let(:scale_type) { Stave::ScaleType.major }

        include_examples :sets_notes, %i[
          d_flat
          e_flat
          f_natural
          g_flat
          a_flat
          b_flat
          c_natural
          d_flat
        ]
      end

      describe "minor" do
        let(:scale_type) { Stave::ScaleType.minor }

        include_examples :sets_notes, %i[
          d_flat
          e_flat
          f_flat
          g_flat
          a_flat
          b_double_flat
          c_flat
          d_flat
        ]
      end
    end

    describe "D" do
      let(:tonic) { Stave::Note.d_natural }

      describe "major" do
        let(:scale_type) { Stave::ScaleType.major }

        include_examples :sets_notes, %i[
          d_natural
          e_natural
          f_sharp
          g_natural
          a_natural
          b_natural
          c_sharp
          d_natural
        ]
      end

      describe "minor" do
        let(:scale_type) { Stave::ScaleType.minor }

        include_examples :sets_notes, %i[
          d_natural
          e_natural
          f_natural
          g_natural
          a_natural
          b_flat
          c_natural
          d_natural
        ]
      end
    end

    describe "D#" do
      let(:tonic) { Stave::Note.d_sharp }

      describe "major" do
        let(:scale_type) { Stave::ScaleType.major }

        include_examples :sets_notes, %i[
          d_sharp
          e_sharp
          f_double_sharp
          g_sharp
          a_sharp
          b_sharp
          c_double_sharp
          d_sharp
        ]
      end

      describe "minor" do
        let(:scale_type) { Stave::ScaleType.minor }

        include_examples :sets_notes, %i[
          d_sharp
          e_sharp
          f_sharp
          g_sharp
          a_sharp
          b_natural
          c_sharp
          d_sharp
        ]
      end
    end

    describe "Eb" do
      let(:tonic) { Stave::Note.e_flat }

      describe "major" do
        let(:scale_type) { Stave::ScaleType.major }

        include_examples :sets_notes, %i[
          e_flat
          f_natural
          g_natural
          a_flat
          b_flat
          c_natural
          d_natural
          e_flat
        ]
      end

      describe "minor" do
        let(:scale_type) { Stave::ScaleType.minor }

        include_examples :sets_notes, %i[
          e_flat
          f_natural
          g_flat
          a_flat
          b_flat
          c_flat
          d_flat
          e_flat
        ]
      end
    end

    describe "E" do
      let(:tonic) { Stave::Note.e_natural }

      describe "major" do
        let(:scale_type) { Stave::ScaleType.major }

        include_examples :sets_notes, %i[
          e_natural
          f_sharp
          g_sharp
          a_natural
          b_natural
          c_sharp
          d_sharp
          e_natural
        ]
      end

      describe "minor" do
        let(:scale_type) { Stave::ScaleType.minor }

        include_examples :sets_notes, %i[
          e_natural
          f_sharp
          g_natural
          a_natural
          b_natural
          c_natural
          d_natural
          e_natural
        ]
      end
    end

    describe "E#" do
      let(:tonic) { Stave::Note.e_sharp }

      describe "major" do
        let(:scale_type) { Stave::ScaleType.major }

        include_examples :sets_notes, %i[
          e_sharp
          f_double_sharp
          g_double_sharp
          a_sharp
          b_sharp
          c_double_sharp
          d_double_sharp
          e_sharp
        ]
      end

      describe "minor" do
        let(:scale_type) { Stave::ScaleType.minor }

        include_examples :sets_notes, %i[
          e_sharp
          f_double_sharp
          g_sharp
          a_sharp
          b_sharp
          c_sharp
          d_sharp
          e_sharp
        ]
      end
    end

    describe "Fb" do
      let(:tonic) { Stave::Note.f_flat }

      describe "major" do
        let(:scale_type) { Stave::ScaleType.major }

        include_examples :sets_notes, %i[
          f_flat
          g_flat
          a_flat
          b_double_flat
          c_flat
          d_flat
          e_flat
          f_flat
        ]
      end

      describe "minor" do
        let(:scale_type) { Stave::ScaleType.minor }

        include_examples :sets_notes, %i[
          f_flat
          g_flat
          a_double_flat
          b_double_flat
          c_flat
          d_double_flat
          e_double_flat
          f_flat
        ]
      end
    end

    describe "F" do
      let(:tonic) { Stave::Note.f_natural }

      describe "major" do
        let(:scale_type) { Stave::ScaleType.major }

        include_examples :sets_notes, %i[
          f_natural
          g_natural
          a_natural
          b_flat
          c_natural
          d_natural
          e_natural
          f_natural
        ]
      end

      describe "minor" do
        let(:scale_type) { Stave::ScaleType.minor }

        include_examples :sets_notes, %i[
          f_natural
          g_natural
          a_flat
          b_flat
          c_natural
          d_flat
          e_flat
          f_natural
        ]
      end
    end

    describe "F#" do
      let(:tonic) { Stave::Note.f_sharp }

      describe "major" do
        let(:scale_type) { Stave::ScaleType.major }

        include_examples :sets_notes, %i[
          f_sharp
          g_sharp
          a_sharp
          b_natural
          c_sharp
          d_sharp
          e_sharp
          f_sharp
        ]
      end

      describe "minor" do
        let(:scale_type) { Stave::ScaleType.minor }

        include_examples :sets_notes, %i[
          f_sharp
          g_sharp
          a_natural
          b_natural
          c_sharp
          d_natural
          e_natural
          f_sharp
        ]
      end
    end

    describe "Gb" do
      let(:tonic) { Stave::Note.g_flat }

      describe "major" do
        let(:scale_type) { Stave::ScaleType.major }

        include_examples :sets_notes, %i[
          g_flat
          a_flat
          b_flat
          c_flat
          d_flat
          e_flat
          f_natural
          g_flat
        ]
      end

      describe "minor" do
        let(:scale_type) { Stave::ScaleType.minor }

        include_examples :sets_notes, %i[
          g_flat
          a_flat
          b_double_flat
          c_flat
          d_flat
          e_double_flat
          f_flat
          g_flat
        ]
      end
    end

    describe "G" do
      let(:tonic) { Stave::Note.g_natural }

      describe "major" do
        let(:scale_type) { Stave::ScaleType.major }

        include_examples :sets_notes, %i[
          g_natural
          a_natural
          b_natural
          c_natural
          d_natural
          e_natural
          f_sharp
          g_natural
        ]
      end

      describe "minor" do
        let(:scale_type) { Stave::ScaleType.minor }

        include_examples :sets_notes, %i[
          g_natural
          a_natural
          b_flat
          c_natural
          d_natural
          e_flat
          f_natural
          g_natural
        ]
      end
    end

    describe "G#" do
      let(:tonic) { Stave::Note.g_sharp }

      describe "major" do
        let(:scale_type) { Stave::ScaleType.major }

        include_examples :sets_notes, %i[
          g_sharp
          a_sharp
          b_sharp
          c_sharp
          d_sharp
          e_sharp
          f_double_sharp
          g_sharp
        ]
      end

      describe "minor" do
        let(:scale_type) { Stave::ScaleType.minor }

        include_examples :sets_notes, %i[
          g_sharp
          a_sharp
          b_natural
          c_sharp
          d_sharp
          e_natural
          f_sharp
          g_sharp
        ]
      end
    end
  end
end
