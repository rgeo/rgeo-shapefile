require "rgeo"

# RGeo is a spatial data library for Ruby, provided by the "rgeo" gem.
#
# The optional RGeo::Shapefile module provides a set of tools for reading
# ESRI shapefiles.

module RGeo
  # This module contains an implementation of ESRI Shapefiles.
  # Use the Shapefile::Reader class to read a shapefile, extracting
  # geometry and attribute data from it.
  # RGeo does not yet have support for writing shapefiles.

  module Shapefile
  end
end

# Implementation files
require "rgeo/shapefile/version"
require "rgeo/shapefile/reader"
