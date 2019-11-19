# code here!
class School
    attr_accessor :name
    attr_reader :roster, :persons_grade
    
    def initialize(school_name)
        @name = school_name
        @roster = {}
    end

    def add_student(student_name, grade_level)
        @grade_student_names = []
        @persons_grade = grade_level
        if self.roster[grade_level]
            self.roster[grade_level]<< student_name
        else    
            self.roster[grade_level] = @grade_student_names << student_name
        end
    end

    def grade(grade_level)
        self.roster[grade_level]
    end

    def sort
        sorted = {}
            roster.each do |grade, students|
              sorted[grade] = students.sort
            end
            sorted
          
    end
end