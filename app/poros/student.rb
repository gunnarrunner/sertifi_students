class Student
  attr_reader :id,
              :name,
              :start_year,
              :end_year,
              :gpa
  def initialize(student_info)
    @id = student_info[:Id]
    @name = student_info[:Name]
    @start_year = student_info[:StartYear]
    @end_year = student_info[:EndYear]
    @gpa = student_info[:GPARecord]
  end

  # def 
    
  # end
end