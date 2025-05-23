# frozen_string_literal: true

require_relative 'lib/swatch_time_ruby/version'
require 'time'

Gem::Specification.new do |spec|
  spec.name = 'swatch_time_ruby'
  spec.version = SwatchTimeRuby::VERSION
  spec.authors = ['Neko']
  spec.email = ['99990146+Neko-22@users.noreply.github.com']

  spec.summary = 'Convert a ruby time to a swatch time string.'
  spec.homepage = 'https://github.com/Neko-22/swatch_time_ruby'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.1.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/Neko-22/swatch_time_ruby'
  spec.metadata['changelog_uri'] = 'https://github.com/Neko-22/swatch_time_ruby/blob/main/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
