require 'pry'

class School

    attr_reader :name, :roster
    attr_writer :roster

    def initialize(name)
        @name = name
        @roster = {}
    end
    
    def add_student(name, grade)
       if @roster[grade]
        @roster[grade].push(name)
       else
        @roster[grade] = []
        @roster[grade] << name
       end
    end

    def grade(grade)
      grade = @roster[grade]
      # Ex: school.grade(9) = grade == @roster[grade] it returns all of the students in that grade
    end
    
    def sort
        new_hash = {}
     roster.each do |grades, students|
        new_hash[grades] = students.sort
      end
      new_hash
    end
end #end of class

