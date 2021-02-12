# frozen_string_literal: true

require "minitest/autorun"
require "rgeo/shapefile"

class InvalidCpgEncodingTest < Minitest::Test
  def test_missing_columns
    _open_shapefile("test") do |file_|
      rec_ = file_.next
      refute_nil(rec_.geometry)
      assert_equal(1, rec_['TestInt'])
    end
  end

  private

  def _open_shapefile(name_, &block_)
    RGeo::Shapefile::Reader.open(
      File.expand_path("invalid_cpg_encoding/#{name_}",
      File.dirname(__FILE__)),
      &block_
    )
  end
end
