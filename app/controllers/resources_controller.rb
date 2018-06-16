class ResourcesController < ApplicationController
  def new
    @resource = Resource.new
  end

  def create
    @resource = Resource.new(resource_params)
    searches = extract_searches(params[:resource][:searches][:name])
    if @resource.save
      searches.each do |search|
        CommonSearch.create(text: search.strip, resource: @resource)
      end
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
    searches = extract_searches(params[:resource][:searches][:name])
    existing_searches = @resource.common_searches.map(&:text)
    if @resource.update(resource_params)
      searches.each do |search|
        unless existing_searches.include?(search)
          CommonSearch.create(text: search.strip, resource: @resource)
        end
      end
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def extract_searches(string)
    string.split(",")
  end

  def resource_params
    params.require(:resource).permit(:name, :url, :description, :category_id, :photo)
  end
end
