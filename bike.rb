# Bike

class Bike

  STANDARD_WEIGHT_LBS = 200 # lbs
  MAX_CARGO_ITEMS = 10

  attr_accessor :color, :weight, :pannier, :rental_data

  def initialize(id, color, price, weight = STANDARD_WEIGHT_LBS, rented = false)
    @rental_data = recordify(id, price, rented)
    @color = color
    @weight = weight
    @pannier = Pannier.new(MAX_CARGO_ITEMS)
  end

  RentalData = Struct.new(:id, :price, :rented)
  def recordify(id, price, rented)
    RentalData.new(id, price, rented)
  end

  def rent!
    rental_data.rented = true
  end

  def add_cargos(*items)
    items.each {|item| add_cargo(item)}
  end
  
  def add_cargo(item)
    pannier.add(item)
  end

  def remove_cargo(item)
    pannier.remove(item)
  end

  def pannier_capacity
    pannier.capacity
  end

  def pannier_remaining_capacity
    pannier.remaining_capacity
  end

  def cargo_content_size
    pannier.size
  end

end

class Pannier
  attr_accessor :contents, :capacity 

  def initialize(capacity, contents=[])
    @capacity = capacity
    @contents = contents
  end

  def add(item)
    contents << Item.new(item)
  end

  def remove(item)
    contents.remove(Item.new(item))
  end

  def remaining_capacity
    capacity - size
  end

  def size
    contents.size
  end
  
end

class Item
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end