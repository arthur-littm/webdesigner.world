class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @categories = Category.all
  end
end
