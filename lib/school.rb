class School
  attr_reader :name, :houses, :courses

  def initialize(name, houses)
    @name = name
    @houses = houses
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def sort(student)
    student.house = @houses.sample
  end

  def all_students
    @courses.flat_map do |course|
      course.students
    end
  end

  def unique_students
    all_students.uniq
  end

  def sort_students
    unique_students.each do |student|
      sort(student)
    end

      # @courses.each do |course|
      #   course.students.each do |student|
      #     student.house = @houses.sample
      #   end
      # end
  end

  def student_names
    unique_students.map {|student| student.name}

    # student_names = []
    # @courses.each do |course|
    #   course.students.each do |student|
    #     student_names << student.name
    #   end
    # end
    # @student_names = student_names.uniq
  end

  def students_by_house
    unique_students.group_by do |student|
      student.house
    end
  end
end
