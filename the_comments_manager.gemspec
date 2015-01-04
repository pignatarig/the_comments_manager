# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'the_comments_manager/version'

Gem::Specification.new do |spec|
  spec.name          = "the_comments_manager"
  spec.version       = TheCommentsManager::VERSION
  spec.authors       = ["Ilya N. Zykin"]
  spec.email         = ["zykin-ilya@ya.ru"]
  spec.summary       = %q{TheComments platform. Management UI for comments}
  spec.description   = %q{Manage your comments with Bootstrap3 based UI}
  spec.homepage      = "https://github.com/TheComments/the_comments_manager"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'kaminari'
  spec.add_dependency 'bootstrap-sass'
  spec.add_dependency 'jbuilder'
  spec.add_dependency 'the_simple_sort',   '~> 0.0.2'
  spec.add_dependency 'the_notification',  '~> 0.0.1'

  spec.add_dependency 'slim'
  spec.add_dependency 'the_data_role_block_slim'
  spec.add_dependency 'the_data_role_block_jquery'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
