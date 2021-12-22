require 'rails_helper'

RSpec.describe Student do
  it 'can verify that it exists' do
    student = Student.new({
                           Id: 1,
                           Name: "Jack",
                           StartYear: 2013,
                           EndYear: 2016,
                           GPARecord: [3.4,2.1,1.2,3.6]
                          })

    expect(student).to be_an_instance_of(Student)
    expect(student.id).to eq(1)
    expect(student.name).to eq("Jack")
    expect(student.start_year).to eq(2013)
    expect(student.end_year).to eq(2016)
    expect(student.gpa).to eq([3.4,2.1,1.2,3.6])
  end

  it 'can get the years attended for each student' do
    student = Student.new({
                           Id: 1,
                           Name: "Jack",
                           StartYear: 2013,
                           EndYear: 2016,
                           GPARecord: [3.4,2.1,1.2,3.6]
                          })

    student1 = Student.new({
                           Id: 1,
                           Name: "Jack",
                           StartYear: 2010,
                           EndYear: 2013,
                           GPARecord: [3.4,2.1,1.2,3.6]
                          })

    expect(student.years_attended).to eq([2013, 2014, 2015, 2016])
    expect(student1.years_attended).to eq([2010, 2011, 2012, 2013])
  end

  it 'can get the overall gpa' do
    student = Student.new({
                           Id: 1,
                           Name: "Jack",
                           StartYear: 2013,
                           EndYear: 2016,
                           GPARecord: [3.4,2.1,1.2,3.6]
                          })

    expect(student.overall_gpa).to eq(2.6)
  end

  it 'can get the difference of a students best and worst year' do
    student = Student.new({
                           Id: 1,
                           Name: "Jack",
                           StartYear: 2013,
                           EndYear: 2016,
                           GPARecord: [3.4,2.1,1.2,3.6]
                          })

    expect(student.difference_gpa).to eq(2.4)
  end
end
