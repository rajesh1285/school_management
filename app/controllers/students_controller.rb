class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  def index
  @students = Student.all
  end

  def create
  @student = Student.new(student_params)
  if @student.save
    redirect_to @student
  else
    render "new"
  end
  end

  def show
  end

  def destroy
    @student = Student.find(params[:id])
    if @student.destroy
      redirect_to @student
    end
  end

  def edit
  end
  def new
    @student = Student.new

  end
  def update
    if @student.update(student_params)
      redirect_to @student
    else
      render 'edit'
    end
  end
  def set_student
    @student = Student.find(params[:id])
  end
  private
  def student_params
    params.require(:school).permit(:name,:address,:gender,:phone)
  end
end
