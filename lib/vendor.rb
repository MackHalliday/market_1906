require 'pry'


class Vendor
  attr_reader :name, :inventory

  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(item)
    @inventory[item]
  end

  def stock(item, num)
    @inventory[item] += num
  end

  def sell_items(item, num)
    #binding.pry
    if @inventory[item] > 0
      @inventory[item] -= num
    end
  end
end
