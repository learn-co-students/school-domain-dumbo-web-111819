# code here!
require 'pry'

class School 
    attr_accessor :name, :roster

    def initialize(name)
        @name = name 
        @roster = {}
    end

    def add_student(name, grade)
        
        if @roster[grade]
            @roster[grade].push(name) 
        else 
            @roster[grade] = [name]
        end 
    end #this is the end of the add_student method

    def grade(grade)
        if grade
            @roster[grade]
        end
    end

    def sort
        @roster.each {|k, v|
            v.sort!
        }
        @roster.sort.to_h

    end 


end 