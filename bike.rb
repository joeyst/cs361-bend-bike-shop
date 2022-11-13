# Bike

class Bike

  STANDARD_WEIGHT_LBS = 200 # lbs
  MAX_CARGO_ITEMS = 10

  attr_accessor :id, :color, :price, :weight, :rented, :cargo_contents

  def initialize(id, color, price, weight = STANDARD_WEIGHT_LBS, rented = false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @cargo_contents = []
  end

  def rent!
    rented = true
  end
  
  def add_cargo(item)
    cargo_contents << item
  end

  def remove_cargo(item)
    cargo_contents.remove(item)
  end

  def pannier_capacity
    MAX_CARGO_ITEMS
  end

  def pannier_remaining_capacity
    MAX_CARGO_ITEMS - cargo_content_size
  end

  def cargo_content_size
    cargo_contents.size
  end

end
