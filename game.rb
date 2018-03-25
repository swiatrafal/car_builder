require 'io/console'
require_relative 'car'
require_relative 'category'

class Game
  attr_reader :categories, :car

  CATEGORY_NAMES = %w[Engine]

  def initialize(params={})
    build_categories
    @car = Car.new
  end

  def start
    puts "Build your dream car. Press [ENTER] to start or [CTRL+c] to exit."
    loop do
      key = STDIN.getch
      exit(1) if key == "\u0003"
      break if key == "\n"
    end
    build_car
  end

  def finish
    puts "Your dream car will cost you $#{car.price}"
    exit(1)
  end

  private

  def build_car
    @categories.each do |category|
      select_component(category)
    end
  end

  def build_categories
    @categories = CATEGORY_NAMES.collect { |category_name| Category.new(name: category_name) }
  end

  def select_component(category)
    puts category.components_instructions
    available_indices = category.components_indices
    selected_option = ''
    loop do
      selected_option = STDIN.getch
      break if available_indices.include?(selected_option)
      puts "Please choose one option from #{available_indices}..."
    end
    chosen_component = category.find_component(selected_option.to_i)
    car.add_component(chosen_component)
  end

end
