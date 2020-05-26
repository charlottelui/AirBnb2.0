class FlatsController < ApplicationController
  def show
    @flat = Flat.find(params[:id])
  end

  def index
     @flats = policy_scope(Flat)
  end
end
