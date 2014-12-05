# RGeo::Shapefile

[![Gem Version](https://badge.fury.io/rb/rgeo-shapefile.svg)](http://badge.fury.io/rb/rgeo-shapefile)
[![Build Status](https://travis-ci.org/rgeo/rgeo-shapefile.svg?branch=master)](https://travis-ci.org/rgeo/rgeo-shapefile)

`RGeo::Shapefile` is an optional module for [RGeo](http://github.com/dazuma/rgeo)
for reading geospatial data from ESRI shapefiles.

## Summary

RGeo is a key component for writing location-aware applications in the
Ruby programming language. At its core is an implementation of the
industry standard OGC Simple Features Specification, which provides data
representations of geometric objects such as points, lines, and polygons,
along with a set of geometric analysis operations. See the README for the
"rgeo" gem for more information.

`RGeo::Shapefile` is an optional RGeo add-on module for reading geospatial
data from ESRI shapefiles. The shapefile format is a common file format
for geospatial data sets. It is specified in
[this ESRI whitepaper](http://www.esri.com/library/whitepapers/pdfs/shapefile.pdf).

Example:

```ruby
require 'rgeo/shapefile'

RGeo::Shapefile::Reader.open('myshpfil.shp') do |file|
  puts "File contains #{file.num_records} records."
  file.each do |record|
    puts "Record number #{record.index}:"
    puts "  Geometry: #{record.geometry.as_text}"
    puts "  Attributes: #{record.attributes.inspect}"
  end
  file.rewind
  record = file.next
  puts "First record geometry was: #{record.geometry.as_text}"
end
```

## Install

`RGeo::Shapefile` has the following requirements:

* Ruby 1.9.3 or later preferred.
* rgeo 0.3.13 or later.
* dbf 1.7 or later.

Include in your bundle:

```ruby
gem 'rgeo-shapefile'
```

Install `RGeo::Shapefile` as a gem:

```sh
gem install rgeo
gem install rgeo-shapefile
```

See the README for the "rgeo" gem, a required dependency, for further installation information.

If you are using Ruby 1.8, use version `0.2.x` of this gem.

## To-do list

* Improve test case coverage.
* Support for writing shapefiles.

## Development and support

Documentation is available at http://rdoc.info/gems/rgeo-shapefile

Source code is hosted on Github at http://github.com/rgeo/rgeo-shapefile

Contributions are welcome. Fork the project on Github.

Report bugs on Github issues at http://github.org/rgeo/rgeo-shapefile/issues

## Acknowledgments

RGeo is written by Daniel Azuma (http://www.daniel-azuma.com).

Development is supported by:

* [Pirq](http://www.pirq.com)
* [Neighborland](https://neighborland.com)

Although we don't use shapelib (http://shapelib.maptools.org) to read
ESRI shapefiles, we did borrow a bunch of their test cases.

## License

Copyright 2014 Daniel Azuma

Copyright 2014 Tee Parham

https://github.com/rgeo/rgeo-shapefile/blob/master/LICENSE.txt
