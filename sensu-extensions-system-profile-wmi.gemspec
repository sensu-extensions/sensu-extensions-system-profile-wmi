# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "sensu-extensions-system-profile-wmi"
  spec.version       = "1.0.0"
  spec.authors       = ["Sensu-Extensions and contributors"]
  spec.email         = ["<sensu-users@googlegroups.com>"]

  spec.summary       = "Check extension to collect Windows system metrics via WMI"
  spec.description   = "Check extension to collect Windows system metrics via WMI"
  spec.homepage      = "https://github.com/sensu-extensions/sensu-extensions-system-profile-wmi"

  spec.files         = Dir.glob('{bin,lib}/**/*') + %w(LICENSE README.md CHANGELOG.md)
  spec.require_paths = ["lib"]

  spec.add_dependency "sensu-extension"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "sensu-logger"
  spec.add_development_dependency "sensu-settings"
end
