# frozen_string_literal: true

require "./lib/rgeo/shapefile/version"

Gem::Specification.new do |spec|
  spec.name = "rgeo-shapefile"
  spec.summary = "An RGeo module for reading ESRI shapefiles."
  spec.description = "RGeo is a geospatial data library for Ruby. RGeo::Shapefile is an optional RGeo module for reading the ESRI shapefile format, a common file format for geospatial datasets."
  spec.authors = ["Daniel Azuma", "Tee Parham"]
  spec.email = ["dazuma@gmail.com", "parhameter@gmail.com"]
  spec.homepage = "http://github.com/rgeo/rgeo-shapefile"
  spec.license = "BSD"

  spec.files = Dir["lib/**/*.rb", "*.md", "LICENSE.txt"]

  spec.version = RGeo::Shapefile::VERSION

  spec.required_ruby_version = ">= 2.1.0"

  spec.add_dependency "rgeo", ">= 1.0"
  spec.add_dependency "dbf", "~> 3.0"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "minitest", "~> 5.3"
  spec.add_development_dependency "rake", "~> 12.0"
end
