class SchoolsController < ApplicationController
before_action :set_school, only: [:show, :edit, :update, :destroy]

def index
@schools = School.all
end

def create
@school = School.new(school_params)
if @school.save
  redirect_to @school
else
  render "new"
end
end

def show
end

def destroy
  @school = School.find(params[:id])
  if @school.destroy
    redirect_to @school
  end
end

def edit
end
def new
  @school = School.new

end
def update
  if @school.update(school_params)
    redirect_to @school
  else
    render 'edit'
  end
end
def set_school
  @school = School.find(params[:id])
end
private
def school_params
  params.require(:school).permit(:name,:recognized,:address,:phone,:principal_id)
end

end
