# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = 'lita-tox'
  spec.version       = '0.3.0'
  spec.authors       = ['Braiden Vasco']
  spec.email         = ['braiden-vasco@mailtor.net']

  spec.summary       = 'Tox adapter for the Lita chat bot'
  spec.description   = 'Tox adapter for the Lita chat bot.'
  spec.homepage      = 'https://github.com/braiden-vasco/lita-tox'
  spec.license       = 'MIT'

  spec.metadata['lita_plugin_type'] = 'adapter'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.extensions << 'ext/tox/extconf.rb'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop', '~> 0.31'
  spec.add_development_dependency 'rspec', '~> 3.3'
  spec.add_development_dependency 'simplecov', '~> 0.10'
  spec.add_development_dependency 'yard', '~> 0.8'
  spec.add_development_dependency 'redcarpet', '~> 3.3'
  spec.add_development_dependency 'github_changelog_generator', '~> 1.6'
  spec.add_development_dependency 'rake-compiler', '~> 0.9'
  spec.add_development_dependency 'pry', '~> 0.10'

  spec.add_runtime_dependency 'lita', '~> 4.4'
end
