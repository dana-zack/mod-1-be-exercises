# Add the 2 requires you will need here
require 'rspec'
require './lib/student'

describe Student do
  describe "#initialize" do
    it 'is an instance of student' do
      student = Student.new('Penelope')
      expect(student).to be_a Student
    end
    
    it 'has a name' do
      student = Student.new('Penelope')
      expect(student.name).to eq 'Penelope'
    end

    it 'has a different name' do
      student = Student.new('James')
      expect(student.name).to eq 'James'
    end

    it 'assigns a default name' do
      student = Student.new(42)
      expect(student.name).to eq 'Default Name'
    end


    it '#has cookies by default' do
      student = Student.new('Penelope')
      expect(student.cookies).to eq []
    end
  end

  describe '#add_cookie' do
    it '#adds cookies to cookies array' do
      student = Student.new('Penelope')
      student.add_cookie('Chocolate Chunk')
      student.add_cookie('Snickerdoodle')
      expect(student.cookies).to eq ["Chocolate Chunk", "Snickerdoodle"]
    end
  end

end
