class StudentsController < ApplicationController

  def show
     @student = Student.find(params[:id])
   end

  def new
    @student = Student.new
  end

  def create
     @student = Student.new(params.require(:student))
     @student.save
     redirect_to student_path(@student)
   end
end
