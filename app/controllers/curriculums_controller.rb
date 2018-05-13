class CurriculumsController < ApplicationController
  def index
    @curriculums = Curriculum.all
  end
  def new
    @curriculum = Curriculum.new
  end

  def show
    @curriculums = Curriculum.all
  end

  def create
    curriculum = Curriculum.new(curriculum_params)
    curriculum.save
  end

  def edit
    @curriculum = Curriculum.find(params[:id])
  end

  def update
    curriculum = Curriculum.find(params[:id])
    curriculum.update(curriculum_params)
  end

  def destroy
    #code
    curriculum = Curriculum.find(params[:id])
    curriculum.destroy
  end

  private
  def curriculum_params
    params.require(:curriculum).permit(:course, :hour, :price)
  end
end
