class Pirate
  attr_reader :name, :job, :booty

  def initialize(name, job = 'Scallywag')
    @name = name
    @job = job
    @cursed = 0
    @booty = 0
  end

  def cursed?
    return true if @cursed > 2
    false
  end

  def commit_heinous_act
    @cursed += 1
  end

  def rob_ships
    @booty += 100
  end

end
