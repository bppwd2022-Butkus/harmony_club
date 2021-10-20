class SectionsController < ApplicationController
  def index
  end

  def show
    @sec = Section.find(params[:id])
  end

  def new
    @sec = Section.new
  end

  def create
    @sec = Section.new(section_params)

    if @sec.save
      redirect_to @sec
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @sec = Section.find(params[:id])
  end

  def update
    @sec = Section.find(params[:id])

    if @sec.update(section_params)
      redirect_to @sec
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def delete
  end

  def destroy
    @sec = Section.find(params[:id])
    @sec.destroy

    redirect_to sections_path
  end

  private
    def section_params
      params.require(:section).permit(:title)
    end
end
