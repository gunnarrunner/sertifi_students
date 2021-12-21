require 'rails_helper'

RSpec.describe SertifiFacade do
  before :each do
    
  end

  it 'can create an array of stations', :vcr do
    students = SertifiFacade.student

    expect(students[0]).to be_an_instance_of(Student)
    expect(students.count).to eq(25)
  end
end
