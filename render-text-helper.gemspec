# frozen_string_literal: true

require_relative 'lib/render/text/helper/version'

Gem::Specification.new do |spec|
  spec.name = 'render-text-helper'
  spec.version = Render::Text::Helper::VERSION
  spec.authors = ['Saimon Lovell']
  spec.email = ['staysynchronize@gmail.com']

  spec.summary = 'Does some string manipulation'
  spec.description = 'Add some more functionality to string and booleans'
  spec.homepage = 'https://github.com/SaimonL/render-text-helper'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.1'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/SaimonL/render-text-helper'
  spec.metadata['changelog_uri'] = 'https://github.com/SaimonL/render-text-helper/blob/master/CHANGELOG.md'

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.metadata['rubygems_mfa_required'] = 'true'
end
