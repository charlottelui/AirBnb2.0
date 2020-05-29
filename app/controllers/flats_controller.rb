class FlatsController < ApplicationController
  def show
    @flat = Flat.find(params[:id])
    authorize @flat
  end

  def new
    @flat = Flat.new
    @first_photo = @flat.photos.first
    @remaining_photos = @flat.photos.reject{|photo| photo == @first_photo}
    authorize @flat
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user
    authorize @flat
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  private

  def flat_params
    params.require(:flat).permit(:title, :address, :price, :guests, :bedrooms, :bathrooms, :flat_type, :description, :amenities)
  end

end
