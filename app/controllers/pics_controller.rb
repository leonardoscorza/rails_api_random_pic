class PicsController < ApplicationController
  # GET /pics
  def index
    @pics = Pic.all.limit(20).reverse
    render json: @pics
  end

  # POST /pics
  def create
    @pic = Pic.new(pic_params)

    if @pic.save
      render json: @pic, status: :created, location: @pic
    else
      render json: @pic.errors, status: :unprocessable_entity
    end
  end

  private

    # Only allow a trusted parameter "white list" through.
    def pic_params
      params.require(:pic).permit(:photo)
    end
end
