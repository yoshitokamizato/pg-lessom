class CurriculumsController < ApplicationController
  def index
    #code
    @curriculum = Curriculum.all
  end
  def new
    #code
    @curriculum = Curriculum.new
  end
  def create
    #code
    Curriculum.create(curriculum_params)
  end
  def edit
    #code
    @curriculum = Curriculum.find(params[:id])
  end
  def update
    #code
    curriculum = Curriculum.find(params[:id])
    curriculum.update(curriculum_params)
  end

  private
  def curriculum_params
    #code
    params.require(:curriculum).permit(:c_name, :term, :price)
  end
end
