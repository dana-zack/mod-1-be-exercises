require 'rspec'
require './lib/mod'
require './lib/student'

describe Mod do
  it 'is an instance of a Mod' do
    mod_1 = Mod.new('Mod1', 'Intro to OOP')
    expect(mod_1).to be_a Mod
  end

  it 'has a name' do
    mod_1 = Mod.new('Mod1', 'Intro to OOP')
    expect(mod_1.name).to eq("Mod1")
  end

  it 'has a description' do
    mod_1 = Mod.new('Mod1', 'Intro to OOP')
    expect(mod_1.description).to eq("Intro to OOP")
  end

  it 'has students' do
    mod_1 = Mod.new('Mod1', 'Intro to OOP')
    expect(mod_1.students).to eq([])
  end

  it 'adds students, lists their names, and alphabetizes them' do
    mod_1 = Mod.new('Mod1', 'Intro to OOP')
    expect(mod_1.students).to eq([])
    chris = Student.new('chRIs')
    richard = Student.new('RiCHard')
    meg = Student.new('meG')
    kat = Student.new('kat')
    mod_1.add_student(chris)
    mod_1.add_student(richard)
    mod_1.add_student(meg)
    mod_1.add_student(kat)
    expect(mod_1.student_names).to eq(["Chris","Richard","Meg","Kat"])
    expect(mod_1.alphabetical_student_names).to eq(["Chris","Kat","Meg","Richard"])
  end

end