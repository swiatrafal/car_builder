require_relative 'engine'

class PetrolEngine < Engine

  def fuel
    'Petrol'
  end
  
  def name
    'Petrol engine'
  end

  def price
    1000
  end

  def description
    'An internal combustion engine with spark-ignition, designed to run on petrol (gasoline) and similar volatile fuels'
  end

end

