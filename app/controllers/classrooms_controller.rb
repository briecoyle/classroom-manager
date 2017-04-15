class ClassroomsController < ApplicationController
  def new
    @classroom = Classroom.new
  end

  def create
    @classroom = Classroom.new(classroom_params)
    if @classroom.save
      redirect_to classroom_path(@classroom)
    else
      render new_classroom_path, notice: "All fields required."
    end
  end

  def show
    @classroom = Classroom.find(params[:id])
  end

  def index
    @classrooms = Classroom.all
  end

  private
  def classroom_params
    params.require(:classroom).permit(:period, :subject)
  end
end
