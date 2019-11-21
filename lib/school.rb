class School
    attr_accessor :school, :roster, :student
    def initialize(school)
        @school = school
        @roster = Hash.new
    end
    

    def add_student (student,grade)
        @student = student
        @grade = grade
        @roster[grade] ||= []
        @roster[grade] << @student
        
    end
    def grade(grade)
        roster.find do |x, y| 
            if x == grade
                return y 
            end 
        end 
    end 
    def sort
        sorted_hash = {}
        roster.each do |x, i| 
            sorted_hash[x] = i.sort 
        end 
        sorted_hash
    end
end

