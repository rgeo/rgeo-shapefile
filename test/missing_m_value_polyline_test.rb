# frozen_string_literal: true

require "minitest/autorun"
require "rgeo/shapefile"

class MissingMValuePolylineTest < Minitest::Test
  def test_missing_columns
    _open_shapefile("test") do |file_|
      rec_ = file_.next
      refute_nil(rec_.geometry)
      assert_equal("FL461", rec_["Full_name"])
    end
  end

  private

  def _open_shapefile(name_, &block_)
    RGeo::Shapefile::Reader.open(
      File.expand_path(File.join("missing_m_value_polyline", name_), __dir__),
      &block_
    )
  end
end
