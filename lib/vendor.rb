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

  def sell_item(item, num)

    unless @inventory[item] == 0
      num.times do
        @inventory[item] -= 1
      end
    end
  end
end
