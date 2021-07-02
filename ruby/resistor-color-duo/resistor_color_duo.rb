=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end
require 'byebug'
class ResistorColorDuo

  def self.value(arr)
    colors = {"black" => 0, "brown"  => 1, "red"  =>  2, "orange"  => 3, "yellow"  => 4, "green"  => 5, "blue"  => 6, "violet"  => 7, "grey" => 8, "white" => 9}
    color_one = "#{colors.fetch(arr[0])}"
    color_two = "#{colors.fetch(arr[1])}"
    band = color_one + color_two
    return band.to_i 
    
  end

end


ResistorColorDuo.value(["brown", "black"])