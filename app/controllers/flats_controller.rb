class FlatsController < ApplicationController
  def show
    @flat = Flat.find(params[:id])
    authorize @flat
  end
end
