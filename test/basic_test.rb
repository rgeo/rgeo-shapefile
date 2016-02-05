require "minitest/autorun"
require "rgeo/shapefile"

class BasicTest < Minitest::Test
  def test_has_version
    assert RGeo::Shapefile::VERSION.is_a?(String)
  end
end
