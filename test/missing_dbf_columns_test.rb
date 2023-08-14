# frozen_string_literal: true

require "minitest/autorun"
require "rgeo/shapefile"

class MissingDbfColumnsTest < Minitest::Test
  def test_missing_columns
    _open_shapefile("test") do |file_|
      rec_ = file_.next
      assert !rec_.geometry.nil?
      assert rec_.attributes == {}
    end
  end

  private

  def _open_shapefile(name_, &block_)
    RGeo::Shapefile::Reader.open(
      File.expand_path("missing_dbf_columns/#{name_}",
                       File.dirname(__FILE__)),
      &block_
    )
  end
end
