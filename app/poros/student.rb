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
    @years_attended = years_attended
    @overall_gpa = overall_gpa
    @difference_gpa = difference_gpa
    @year_gpa = year_gpa
  end

  def years_attended
    attended = [@start_year]
    start = @start_year
      until start.succ == @end_year + 1
        attended << start.succ
        start = start.succ
      end
    attended
  end

  def overall_gpa
    (@gpa.sum / @gpa.size).round(1)
  end

  def difference_gpa
    (@gpa.max - @gpa.min).round(1)
  end

  def year_gpa
   Hash[@years_attended.zip(@gpa)]
  end
end