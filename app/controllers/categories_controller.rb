class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @categories = Category.order(position: :asc)
  end
end
