require_relative "lib/stave/version"

Gem::Specification.new do |spec|
  spec.name = "stave"
  spec.version = Stave::VERSION
  spec.authors = ["Chris Welham"]
  spec.email = ["71787007+apexatoll@users.noreply.github.com"]

  spec.summary = "Music theory library"
  spec.homepage = "https://github.com/apexatoll/stave"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.3.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|spec)/|\.git)})
    end
  end

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = %w[lib]

  spec.add_dependency "zeitwerk"
end
