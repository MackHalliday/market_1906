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

  def test_items_can_be_stocked
    @vendor.stock("Peaches", 30)

    assert_equal 30, @vendor.check_stock("Peaches")

    @vendor.stock("Peaches", 25)
    @vendor.stock("Tomatoes", 12)
    inventory = ({"Peaches"=>55, "Tomatoes"=>12})

    assert_equal 55, @vendor.check_stock("Peaches")
    assert_equal inventory, @vendor.inventory
  end

  def test_vendor_can_sell_item
    @vendor.stock("Peaches", 25)
    @vendor.stock("Tomatoes", 12)

    @vendor.sell_item("Peaches", 10)

    assert_equal 15, @vendor.check_stock("Peaches")
  end

end
