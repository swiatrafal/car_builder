require_relative 'engine'

class ElectricalEngine < Engine

  def fuel
    'Electricity'
  end
  
  def name
     'Electrical engine'
  end

  def price
    3000
  end

  def description
     'An engine that converts electrical energy into mechanical energy'
  end

end

