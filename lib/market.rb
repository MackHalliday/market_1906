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

  def sorted_item_list
      all_items_stocked = []

    @vendors.each do |vendor|
      vendor.inventory.map do |item, num|
        all_items_stocked << item
      end
    end
    all_items_stocked.uniq.sort
  end

  def total_inventory

    total_inventory_hash = Hash.new(0)

    @vendors.each do |vendor|
      vendor.inventory.map do |item, num|
        total_inventory_hash[item] += num
      end
    end
    total_inventory_hash
  end

  def check_item_quantity(item, quantity)

    if total_inventory.key?(item) && total_inventory[item] > quantity
      true
    else
      false
    end
  end

  def sell(item, quantity)

    in_stock = check_item_quantity(item, quantity)

    if in_stock == true
      @vendors.each do |vendor|


  end
end
