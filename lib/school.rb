class School
  attr_reader :name, :roster

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

  def grade(num)
    if num
      @roster[num]
    end
  end

  def sort()

    sorted_hash = {}
    @roster.each do |grade, array|
      sorted_hash[grade] = array.sort
     end
     sorted_hash
    end
end
