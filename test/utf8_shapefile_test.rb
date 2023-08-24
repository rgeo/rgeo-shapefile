# frozen_string_literal: true

require "minitest/autorun"
require "rgeo/shapefile"

class Utf8ShapefileTest < Minitest::Test
  def test_attributes
    _open_shapefile do |file_|
      rec_ = file_.next
      assert_equal("Tít Tribe", rec_["NAme"])
    end
  end

  private

  def _open_shapefile(&block_)
    RGeo::Shapefile::Reader.open(
      File.expand_path("utf8_shapefile/utf8", __dir__),
      &block_
    )
  end
end
