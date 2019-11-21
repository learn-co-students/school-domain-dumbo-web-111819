require 'pry'
class School
  attr_accessor :author, :page_count
  attr_reader :school_name, :student, :grade, :roster

  @@all = []
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
    
    @@all.push(self)
  end
  
  def self.all
    @@all
  end

  def add_student(student, grade)
    
    @roster[grade] = [] if !@roster.has_key?(grade)
    @roster[grade].push(student)
  end
  
  def grade(grade)
    @roster[grade]
  end
  def sort
    sorted = {}
    @roster.sort.each do |k,v|
      sorted[k] = v.sort
    end
    sorted
  end
  
  
end
# HS = School.new("HS")
# HS.add_student("a", 7)
# HS.add_student("b",3)
# HS.add_student("c",7)



# p HS.sort
# # bye