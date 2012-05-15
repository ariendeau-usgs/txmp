# -*- encoding: utf-8 -*-
library = File.expand_path('../Library/', __FILE__)
$:.unshift library unless $:.include?(library)
 
require 'bundler/version'
 
Gem::Specification.new do |s|
  s.name        = "txmp"
  s.version     = Txmp::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Austin Riendeau"]
  s.email       = ["ariendeau@usgs.gov"]
  s.homepage    = "http://github.com/carlhuda/bundler"
  s.summary     = "A textmate package manager"
  s.description = "Allows you man"
 
  s.required_rubygems_version = ">= 1.3.6"
 
  s.add_development_dependency "commander"
 
  s.files        = Dir.glob("{bin,lib}/**/*") + %w(LICENSE README.md ROADMAP.md CHANGELOG.md)
  s.executables  = ['txmp']
  s.require_path = 'Library'
end