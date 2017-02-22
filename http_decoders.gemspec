# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'http_decoders/version'

Gem::Specification.new do |spec|
  spec.name = 'http_decoders'
  spec.version = HttpDecoders::VERSION
  spec.authors = ['Ville Lautanala']
  spec.email = ['lautis@gmail.com']
  spec.license = 'MIT'

  spec.summary = 'Unified callback interface to decompression libraries.'
  spec.description = 'Unified callback interface to decompression libraries.'
  spec.homepage = 'https://github.com/smartlyio/http_decoders'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'rspec', '~> 3.5'
end
