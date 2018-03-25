class Component

  attr_reader :price, :description, :name, :id

  def initialize(params={})
    set_id(params[:id])
  end

  def self.descendants
    ObjectSpace.each_object(Class).select { |klass| klass < self }
  end

  def full_name
    "#{name} - #{description}"
  end

  def option_description
   "#{id} #{full_name}\n"
  end

  private

  def set_id(identifier)
    @id = identifier
  end

end

