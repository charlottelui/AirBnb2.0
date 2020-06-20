class PhotosController < ApplicationController
  def show
    @flat = Flat.find(params[:flat_id])
    @photos = @flat.photos
    authorize @flat
  end
end
