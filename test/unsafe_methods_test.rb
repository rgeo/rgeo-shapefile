# frozen_string_literal: true

require "minitest/autorun"
require "rgeo/shapefile"

class UnsafeMethodsTest < Minitest::Test
  def test_unsafe_methods_true
    _open_shapefile("test", true) do |file_|
      file_.next # Does not raise an error
    end
  end

  def test_unsafe_methods_false
    _open_shapefile("test", false) do |file_|
      assert_raises(RGeo::Error::InvalidGeometry) { file_.next }
    end
  end

  private

  def _open_shapefile(name_, unsafe_methods_, &block_)
    RGeo::Shapefile::Reader.open(
      File.expand_path("ring_self_intersection/#{name_}",
                       File.dirname(__FILE__)), unsafe_methods: unsafe_methods_,
      &block_
    )
  end
end
