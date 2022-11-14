# Bike
require_relative 'luggage'

class Bike

  STANDARD_WEIGHT_LBS = 200 # lbs

  attr_reader :id, :color, :price, :weight, :luggage

  def initialize(id, color, price, extra_items)
    @id = id
    @color = color
    @price = price
    @weight = STANDARD_WEIGHT_LBS
    @luggage = Luggage.new(extra_items)
  end

end
