require_relative './spec_helper.rb'
require_relative '../editing_arrays.rb'
require 'colorize'

rainbow_colors = [
  "yellow",
  "default",
  "light_cyan",
]

converted_rainbow = rainbow_colors.map {|color| color.to_sym}
converted_rainbow.each { |c| 2.times { 45.times {print "\u2588".colorize(c)}; puts "" } }

describe "change_rainbow_colors" do
  it "should change the array 'rainbow_colors' to equal ['red', 'light_red', 'light_yellow'] " do
    puts ""
    converted_rainbow.each { |c| 2.times { 45.times {print "\u2588".colorize(c)}; puts "" } }
    puts ""
    rainbow_colors = change_rainbow_colors
    expect(rainbow_colors).to be_kind_of(Array), "Method must return an array"
    converted_rainbow = rainbow_colors.map {|color| color.to_sym}
    converted_rainbow.each { |c| 2.times { 45.times {print "\u2588".colorize(c)}; puts "" } }
    expect(rainbow_colors).to eql(["red","light_red","light_yellow"]), 'Returned array must list the colors as Strings in the correct order'
  end
end

describe "add_colors" do
  it "should add 'green' and 'blue' to the the array 'rainbow_colors'" do
    puts ""
    converted_rainbow.each { |c| 2.times { 45.times {print "\u2588".colorize(c)}; puts "" } }
    puts ""
    rainbow_colors = add_colors
    expect(rainbow_colors).to be_kind_of(Array), "Method must return an array"
    converted_rainbow = rainbow_colors.map {|color| color.to_sym}
    converted_rainbow.each { |c| 2.times { 45.times {print "\u2588".colorize(c)}; puts "" } }
    expect(rainbow_colors).to eql(["red","light_red","light_yellow", "green", "blue"]), 'Returned array must list the colors as Strings in the correct order'
    puts ""
    converted_rainbow.each { |c| 2.times { 45.times {print "\u2588".colorize(c)}; puts "" } }
  end
end
