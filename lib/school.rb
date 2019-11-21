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
  end

  def grade(grade)
    if grade
      @roster[grade]
    end
  end

  def sort

    sorted = {}

    @roster.each{|grade, array|

      sorted[grade] = array.sort

    }
    sorted
    # @roster.each{|k,v|
    #   sorted_array= v.sort!
    # }
    # @roster.to_h
  end


end # this is the end of class
