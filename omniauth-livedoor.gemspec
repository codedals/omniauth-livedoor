# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-livedoor/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-livedoor"
  s.version     = OmniAuth::Livedoor::VERSION
  s.authors     = ["Mitchell Carroll"]
  s.email       = ["mitch@mitchcarroll.com"]
  s.homepage    = ""
  s.summary     = "Omniauth OpenID Strategy for Livedoor"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "omniauth-openid"
end
