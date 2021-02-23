class Course
  attr_reader :name, :professor, :students

  def initialize(name, professor)
    @name = name
    @professor = professor
    @students = []
  end

  def add_student(student)
    @students << student
  end

  def houses_represented
    @students.map {|student| student.house}.uniq

    # houses_represented_array = []
    # @students.select do |student|
    #   if houses_represented_array.count(student) < 1
    #     houses_represented_array << student.house
    #   end
    # end
    # houses_represented_array.uniq
  end
end
