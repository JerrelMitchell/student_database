class StudentsController < ActionController::Base
  def show
    @student = Student.find(params[:id])
  end

  def index
    @students = Student.all
  end
end
