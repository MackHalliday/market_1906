require 'pry'


class Market
  attr_reader :name, :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    vendor_names = []

    @vendors.each do |vendor|
      vendor_names << vendor.name
    end
    vendor_names
  end

  def vendors_that_sell(item)
    vendors_has_item = []

    @vendors.each do |vendor|
       # binding.pry
      if vendor.inventory.has_key?(item)
        vendors_has_item << vendor
      end
    end
    vendors_has_item
  end

end
