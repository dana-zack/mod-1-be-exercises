class Unicorn
  attr_reader :name, :color

  def initialize(name, color = "silver")
    @name = name
    @color = color
  end

  def silver?
    return true if color == "silver"
    false
  end

  def say(phrase)
    "**;* #{phrase} **;*"
  end
end
