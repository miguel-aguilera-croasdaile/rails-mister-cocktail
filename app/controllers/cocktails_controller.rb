class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]

  def index #DONE
    @cocktails = Cocktail.all
  end

  def show #DONE
  end

  def new #DONE
    @cocktail = Cocktail.new
  end

  def create #DONE
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit #DONE
    @cocktail = Cocktail.find(params[:id])
  end

  def update #DONE
    @cocktail.update(cocktail_params)
    redirect_to cocktails_path
  end

  def destroy #DONE
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
