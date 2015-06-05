# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jetsms/version'

Gem::Specification.new do |spec|
	spec.name			= "jetsms"
	spec.version		= JetSMS::VERSION
	spec.authors		= ["Yasin Pehlivanlı"]
	spec.email			= ["ysn1988@hotmail.com"]
	spec.summary		= %q{SMS sender for Turkey JetSMS!}
	spec.description	= %q{This gem is for sending SMS using JetSMS services}
	spec.homepage		= "http://rubygems.org/gems/jetsms"
	spec.license		= "MIT"

	spec.files			= ["lib/jetsms.rb","lib/core-ext/hash.rb", "lib/jetsms/configuration.rb", "lib/jetsms/sms.rb", "lib/jetsms/date.rb", "lib/jetsms/xml_body.rb"]
	spec.executables	= spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
	#spec.files			= `git ls-files -z`.split("\x0")
	#spec.test_files	= spec.files.grep(%r{^(test|spec|features)/})
	#spec.require_paths	= ["lib"]

	spec.add_development_dependency "bundler", "~> 1.7"
	spec.add_development_dependency "rake", "~> 10.0"
end