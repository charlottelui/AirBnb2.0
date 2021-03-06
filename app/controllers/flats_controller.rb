class FlatsController < ApplicationController
  def show
    @flat = Flat.geocoded.find(params[:id])
    @first_photo = @flat.photos.first
    @second_photo = @flat.photos[1]
    @third_photo = @flat.photos[2]
    @forth_photo = @flat.photos[3]
    @fifth_photo = @flat.photos[4]
    @markers = [{:lat=>@flat.latitude, :lng=>@flat.longitude}]
    authorize @flat
  end


  def index
     @flats = policy_scope(Flat.geocoded)
     @markers = @flats.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def new
    @flat = Flat.new
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

  def edit
    @flat = Flat.find(params[:id])
    authorize @flat
  end

  def update
    @flat = Flat.find(params[:id])
    authorize @flat
    if @flat.update(flat_params)
      redirect_to flat_path(@flat)
    else
      render :edit
    end
  end

  private

  def flat_params
    params.require(:flat).permit(:title, :address, :price, :guests, :bedrooms, :bathrooms, :flat_type, :description, amenities: [], photos: [])
  end

end
