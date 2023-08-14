# frozen_string_literal: true

require "minitest/autorun"
require "rgeo/shapefile"

class AllowUnsafeTest < Minitest::Test
  def test_allow_unsafe_true
    _open_shapefile("test", true) do |file_|
      rec_ = file_.next # Does not raise an error
      refute_nil(rec_.geometry)
      assert_equal(false, rec_.geometry.valid?)
    end
  end

  def test_allow_unsafe_false
    _open_shapefile("test", false) do |file_|
      assert_raises(RGeo::Error::InvalidGeometry) { file_.next }
    end
  end

  private

  def _open_shapefile(name_, allow_unsafe_, &block_)
    RGeo::Shapefile::Reader.open(
      File.expand_path("ring_self_intersection/#{name_}",
                       __dir__), allow_unsafe: allow_unsafe_,
      &block_
    )
  end
end
