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

  def weight_lbs
    size * 10
  end

  def size
    items.size
  end

end
