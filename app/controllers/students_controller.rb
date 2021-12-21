class StudentsController < ApplicationController
  def index
    @students = SertifiFacade.student
    @sertifi = SertifiSerializer.return_students(@students)
    render json: @sertifi
  end
end