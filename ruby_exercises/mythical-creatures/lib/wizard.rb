class Wizard
  attr_reader :name

  def initialize(name, bearded = true)
    @name = name
    @bearded = bearded
    @rested = 0
  end

  def bearded?
    return true if @bearded == true
    false
  end

  def incantation(phrase)
    "sudo #{phrase}"
  end

  def rested?
    return true if @rested < 3
    false
  end

  def cast
    @rested += 1
    "MAGIC MISSILE"
  end

end