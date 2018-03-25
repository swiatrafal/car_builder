require_relative 'engine'

class DieselEngine < Engine

  def fuel
    'Diesel oil'
  end
  
  def name
    'Diesel engine'
  end

  def price
    2000
  end

  def description
    'An internal combustion engine in which ignition of the fuel which is injected into the combustion chamber is caused by the elevated temperature of the air in the cylinder due to mechanical compression'
  end

end

