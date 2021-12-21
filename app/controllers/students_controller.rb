class StudentsController < ApplicationController
  def index
    @students = SertifiFacade.student
    @sertifi = SertifiSerializer.return_students(@students)
    @sertifi_json = @sertifi.to_json
  end
end