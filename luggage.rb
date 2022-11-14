class Luggage

  DEFAULT_MAX_CAPACITY = 10

  attr_accessor :items

  def initialize(items=[], capacity=DEFAULT_MAX_CAPACITY)
    @capacity = capacity
    @items = items
  end

  def add(item)
    items << item
  end

  def price
    weight_lbs
  end

  def weight_lbs
    size * 10
  end

  def size
    items.size
  end

  def count
    items.count
  end

end
