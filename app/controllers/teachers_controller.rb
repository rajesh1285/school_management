class TeachersController < ApplicationController
  before_action :set_teacher, only: [:show, :edit, :update, :destroy]

  def index
  @teachers = Teacher.all
  end

  def create
  @teacher = Teacher.new(teacher_params)
  if @teacher.save
    redirect_to @teacher
  else
    render "new"
  end
  end

  def show
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    if @teacher.destroy
      redirect_to @teacher
    end
  end

  def edit
  end
  def new
    @teacher = Teacher.new

  end
  def update
    if @teacher.update(teacher_params)
      redirect_to @teacher
    else
      render 'edit'
    end
  end
  def set_teacher
    @teacher = Teacher.find(params[:id])
  end
  private
  def teacher_params
    params.require(:teacher).permit(:name,:subject,:specialization,:education,:gender,:phone,:school_id)
  end
end
