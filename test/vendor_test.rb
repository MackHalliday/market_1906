require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/vendor'
require 'pry'

class VendorTest < MiniTest::Test
  def setup
    @vendor = Vendor.new("Rocky Mountain Fresh")

  end

  def test_it_exist

    assert_instance_of Vendor, @vendor
  end

  def test_it_has_attributes

    assert_equal "Rocky Mountain Fresh", @vendor.name
    assert_equal ({}), @vendor.inventory
  end

  def test_it_can_check_stock

    assert_equal 0, @vendor.check_stock("Peaches")
  end
end
