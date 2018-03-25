require_relative 'components/engines/engine'
require_relative 'components/engines/diesel_engine'
require_relative 'components/engines/electrical_engine'
require_relative 'components/engines/petrol_engine'

class Category

  attr_accessor :name
  attr_reader :components
  
  def initialize(params ={})
    @name = params[:name]
    @components = []
    build_components
  end

  def components_instructions
    "Choose #{name} - press [option number]:\n#{component_options}"
  end

  def components_indices
    components.collect { |component| component.id.to_s }
  end

  def find_component(id)
    components.select { |component| component.id == id }.first
  end

  private

  def build_components
    return unless @name
    available_components = Object.const_get(@name).descendants
    available_components.each_with_index do  |klass, index|
       @components << klass.new(id: index + 1)
    end
  end

  def component_options
    options_str = ''
    @components.each do |component|
      options_str << component.option_description
    end
    options_str
  end

end

