require "zeitwerk"

module Stave
  INFLECTIONS = {}.freeze

  COLLAPSED_DIRS = [].freeze

  Zeitwerk::Loader.for_gem(warn_on_extra_files: false).tap do |loader|
    loader.inflector.inflect(INFLECTIONS)
    loader.collapse(COLLAPSED_DIRS)
  end.setup
end
