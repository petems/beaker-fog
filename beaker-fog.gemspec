# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "beaker-fog"
  s.version     = '0.0.1'
  s.authors     = ["Peter Souter"]
  s.email       = ["peter.souter@puppetlabs.com"]
  s.homepage    = "https://github.com/petems/beaker-fog"
  s.summary     = %q{Lets test Puppet with Fog servers!}
  s.description = %q{A Plugin for Beaker to spin up servers with Fog}
  s.license     = 'Apache2'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # Optional provisioner specific support
  s.add_runtime_dependency 'beaker'

end
