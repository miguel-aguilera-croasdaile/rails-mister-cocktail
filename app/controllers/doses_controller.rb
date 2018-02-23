class DosesController < ApplicationController
  before_action :set_dose, only: [:show, :edit, :update]

  def index #DONE
    @doses = Dose.all
  end

  def show #DONE
  end

  def new #DONE
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create #DONE
    @dose = Dose.new(dose_params)

    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail_id = @cocktail.id
    @dose.ingredient_id = params[:dose][:ingredient_id]
    if @dose.save || @ingredient.nil? == false
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit #DONE
    @dose = Dose.find(params[:id])
  end

  def update #DONE
    @dose.update(dose_params)
    redirect_to doses_path
  end

  def destroy #DONE
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktails_path
  end

  private

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def dose_params
    params.require(:dose).permit(:description, :amount, :cocktail_id, :ingredient_id)
  end
end
