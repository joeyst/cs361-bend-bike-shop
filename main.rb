!# /usr/bin/env ruby

require_relative 'bike'

bike = Bike.new(1, :pink, 99.99)

bike.add_cargos(:apples, :water, :repair_kit)

puts "Space for #{bike.pannier_remaining_capacity} items left."

bike.rent!

puts bike.inspect