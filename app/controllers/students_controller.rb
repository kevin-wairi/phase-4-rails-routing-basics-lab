class StudentsController < ApplicationController
  def index
    all = Student.all
    render json: all
  end
  def grades
    allordered = Student.all.order(grade: :desc)
    render json: allordered
  end
end
