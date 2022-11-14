class Rental

  attr_reader :bike

  def initialize(bike)
    @bike = bike
  end

  def price
    bike_price + luggage_price
  end

  def weight
    bike_weight + luggage_count
  end

  def bike_weight
    bike.weight
  end

  def luggage_count
    bike.luggage_count
  end

  def bike_price
    bike.price
  end

  def luggage_price
    bike.luggage_price
  end

end
