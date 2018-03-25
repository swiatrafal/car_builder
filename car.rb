class Car

  attr_accessor :components

  def initialize(params ={})
     @components = []
  end

  def add_component(component)
     @components << component
  end

  def price
    @components.collect(&:price).inject(:+)
  end

end

