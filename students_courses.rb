class Student
  attr_accessor :first, :last, :courses

  def initialize(first, last)
    @first, @last = first, last
    @courses = []
  end

  def name
    @first + " " + @last
  end


  def enroll(course)

    if @courses.include?(course)
      puts "You cannot enroll twice"
    elsif  (@courses.any? { |course2| course.conflicts_with?(course2) } )
      puts "This course has a conflict"
    else
      @courses << course
      course.add_student(self.name)
    end
  end

  def course_load
    credits = {}
    @courses.each do |course|
      if credits[course.department]
        credits[course.department] += course.credits
      else
        credits[course.department] = course.credits
      end
    end
    credits
  end

end

class Course
  attr_reader :name, :department, :credits, :days, :time_block

  def initialize(options = {})

    @name, @department, @credits = options[:name], options[:department], options[:credits]
    @days, @time_block = options[:days], options[:time_block]
    @students = []
  end

  def students
    @students
  end

  def conflicts_with?(course2)
    if course2.time_block == self.time_block
      course2.days.each do |day|
        if self.days.include?(day)
          return true
        end
      end
    end
    return false
  end

  def add_student(student)
    @students << student
  end

end