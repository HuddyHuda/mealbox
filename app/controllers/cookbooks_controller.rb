class CookbooksController < ApplicationController
  def index
    @cookbooks = Cookbook.all
  end
  def show
    @cookbook = Cookbook.find(params[:id])
    @ingredients  = Ingredient.all
  end
  def new
    @cookbook = Cookbook.new
  end

  def create
    @cookbook = Cookbook.new(cookbook_params)
    if @cookbook.save
      redirect_to cookbooks_path
    else
      render 'new'
    end
  end

  private
    def cookbook_params
      params.require(:cookbook).permit(:name, :cuisine)
    end
end
