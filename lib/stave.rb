require "zeitwerk"

module Stave
  Zeitwerk::Loader.for_gem(warn_on_extra_files: false).setup
end
