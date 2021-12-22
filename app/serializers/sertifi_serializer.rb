class SertifiSerializer  
  def self.return_students(student_info)
    {
    YourName: "Gunnar Runkle", 
    YourEmail: "runnargunkle@gmail.com", 
    YearWithHighestAttendance: year_highest_attendance(student_info), 
    YearWithHighestOverallGpa: "Working on it", 
    Top10StudentIdsWithHighestGpa: highest_gpa(student_info), 
    StudentIdMostInconsistent: inconsistent(student_info)
    }
  end

  def self.year_highest_attendance(student_info)
    attendance = Hash.new(0)
    student_info.each do |student|
      student.years_attended.each do |year|
        attendance[year] += 1
      end
    end
    max_attendance = attendance.max_by {|key, value| value}
    max_attendance.first
  end

  def self.year_highest_gpa(student_info)
    grades = []
    gpa = Hash.new(0)
    student_info.each do |student|
      student.years_attended.each do |year|
        student.gpa.each do |grade|
          gpa[student.years_attended.zip(grade)]
        end
      end
    end
    gpa
  end

  def self.highest_gpa(student_info)
    students = student_info.sort_by do |student|
      student.overall_gpa
    end

    top_students = students.last(10)

    top_students.map do |student|
      student.id
    end
  end

  def self.inconsistent(student_info)
    students = student_info.sort_by do |student|
      student.difference_gpa
    end

    inconsistent_student = students.first

    return inconsistent_student.id
  end
end