class Vehicle
  attr_reader :model, :four_wheel, :big_back_wheels

  def initialize(model, four_wheel, big_back_wheels)
    @model = model
    @four_wheel = four_wheel
    @big_back_wheels = big_back_wheels
  end

  def car?
    model == "car"
  end

  def tractor?
    model == "tractor"
  end

  def pickup?
    model == "pickup"
  end

  def four_wheel_drive?
    four_wheel
  end

  def big_back_wheels?
    big_back_wheels
  end
end

vehicle = Vehicle.new("pickup", true, true)

if vehicle.pickup? && vehicle.four_wheel_drive? && vehicle.big_back_wheels?
  puts "Vehicle has four wheels with four wheel drive with big wheels in the back"
elsif (vehicle.car? || veichle.pickup?) && vehicle.four_wheel_drive?
  puts "Vehicle has four wheels with four wheel drive"
elsif (vehicle.car? || vehicle.pickup?) && !vehicle.four_wheel_drive?
  puts "Vehicle has four wheels with two wheel drive"
elsif vehicle.tractor? && vehicle.big_back_wheels?
  puts "Vehicle has four wheels with big wheels in the back"
elsif vehicle.tractor?
  puts "Vehicle has four wheels"
end