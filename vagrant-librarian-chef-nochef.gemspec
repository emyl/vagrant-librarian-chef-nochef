# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "vagrant-librarian-chef-nochef"
  spec.version       = "0.1.2"
  spec.authors       = ["Emiliano Ticci", "Jimmy Cuadra"]
  spec.email         = ["emiticci@gmail.com" "jimmy@jimmycuadra.com"]
  spec.description   = %q{A Vagrant plugin to install Chef cookbooks using librarian-chef-nochef.}
  spec.summary       = %q{A Vagrant plugin to install Chef cookbooks using librarian-chef-nochef.}
  spec.homepage      = "https://github.com/emyl/vagrant-librarian-chef-nochef"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "librarian-chef-nochef", ">= 0.1.2"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
