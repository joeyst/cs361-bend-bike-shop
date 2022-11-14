# Bike
require_relative 'luggage'

class Bike

  STANDARD_WEIGHT_LBS = 200 # lbs

  attr_reader :status, :color, :weight, :luggage

  def initialize(id, color, price, extra_items)
    @status = Status.new(id, price)
    @color = color
    @weight = STANDARD_WEIGHT_LBS
    @luggage = Luggage.new(extra_items)
  end

  def luggage_price
    luggage.price
  end

  def luggage_count
    luggage.count
  end

  def id
    status.id
  end

  def price
    status.price
  end

end

class Status
  attr_accessor :id, :price

  def initialize(id, price)
    @id = id
    @price = price
  end
end