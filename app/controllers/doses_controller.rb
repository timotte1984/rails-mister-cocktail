class DosesController < ApplicationController
  # before_action :set_dose, only: [:create]

  def new
    @dose = Dose.new()
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    if @dose.save
      redirect_to cocktail_path(@dose.cocktail)
    else
      render :show
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    cockt = @dose.cocktail
    if @dose.destroy
      redirect_to cocktail_path(cockt)
    else
      render :show
    end
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end
end
