# frozen_string_literal: true

require "minitest/autorun"
require "rgeo/shapefile"

class MissingDbfAttributesTest < Minitest::Test
  def test_missing_attributes
    _open_shapefile("test") do |file_|
      assert_equal(0, file_.cur_index)
      88.times { file_.next }
      rec_ = file_.next
      assert_equal(89, file_.cur_index)
      rec_ = file_.next
      assert_equal(89, rec_.index)
      assert rec_.geometry != nil
      assert rec_.attributes == {}
    end
  end

  private

  def _open_shapefile(name_, &block_)
    RGeo::Shapefile::Reader.open(
      File.expand_path("missing_dbf_attributes/#{name_}",
      File.dirname(__FILE__)),
      &block_
    )
  end
end
