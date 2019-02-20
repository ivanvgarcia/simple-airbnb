class FlatsController < ApplicationController
  before_action :set_flat, only: [:edit]
  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def edit; end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flats).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
