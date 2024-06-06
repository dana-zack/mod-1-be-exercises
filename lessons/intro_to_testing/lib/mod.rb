class Mod
  attr_reader :name, :description, :students

  def initialize(name, description)
    @name = name
    @description = description
    @students = []
  end

  def add_student(name)
    @students << name
  end

  def student_names
    @students.map(&:name)
  end

  def alphabetical_student_names
    @students.map(&:name).sort
  end

end

