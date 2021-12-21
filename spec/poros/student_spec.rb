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
end
