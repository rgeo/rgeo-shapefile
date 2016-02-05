require "minitest/autorun"
require "rgeo/shapefile"

module RGeo
  module Shapefile
    module Tests  # :nodoc:
      class BasicTest < ::Minitest::Test  # :nodoc:
        def test_has_version
          refute_nil(::RGeo::Shapefile::VERSION)
        end
      end
    end
  end
end
