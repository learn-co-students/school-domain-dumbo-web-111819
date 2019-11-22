# code here!
require 'pry'

class School
    attr_accessor :name, :roster

    @@grade = []
    def initialize(school_name)
        @name = school_name
        @roster = {}
    end

    def add_student(student_name, grade)
        roster[grade] ||= [] 
        @roster[grade] << student_name       
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sorted_roster = {}
        roster.each do |grade, student|
            sorted_roster[grade] = roster[grade].sort
        end
       return sorted_roster
    end
end