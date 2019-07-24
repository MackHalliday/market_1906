require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/vendor'
require './lib/market'
require 'pry'


class MarketTest < MiniTest::Test
  def setup
    @market = Market.new("South Pearl Street Farmers Market")
    @vendor = Vendor.new("Rocky Mountain Fresh")
    #vendor_1.stock("Peaches", 35)

  end

  def test_it_exist

    assert_instance_of Market, @market
  end

  def test_it_has_attributes

    assert_equal "South Pearl Street Farmers Market", @market.name
    assert_equal [], @market.vendors
  end
end
