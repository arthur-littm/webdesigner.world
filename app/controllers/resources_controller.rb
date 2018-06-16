class ResourcesController < ApplicationController
  def new
    @resource = Resource.new
  end

  def create
    @resource = Resource.new(resource_params)
    if @resource.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @resource = Resource.find(params[:id])
  end

  def update
    @resource = Resource.find(params[:id])
    if @resource.update(resource_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def resource_params
    params.require(:resource).permit(:name, :url, :description, :category_id, :photo)
  end
end
