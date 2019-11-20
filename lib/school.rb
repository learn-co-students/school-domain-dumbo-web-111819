class School

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if !@roster[grade]
            @roster[grade] = [name]
        else
            @roster[grade] << name
        end
    end

    def roster
        @roster
    end

    def grade(grade)
        @roster[grade].sort
    end

    def sort
        sorted_roster = {}
        @roster.each do |grade, name_array|
            sorted_roster[grade] = name_array.sort
        end
        sorted_roster
    end

end