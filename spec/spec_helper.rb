require "stave"
require "yaml"

RSpec.configure do |config|
  Kernel.srand(config.seed)

  config.disable_monkey_patching!

  config.order = :random

  config.mock_with(:rspec) { |mocks| mocks.verify_partial_doubles = true }

  config.default_formatter = :doc if config.files_to_run.one?

  def each_case(name, &)
    cases = YAML.load_file("spec/cases/#{name}.yml")

    cases.each(&)
  end
end
