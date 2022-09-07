class ReviewsController < ApplicationController
  before_action :set_station, only: %i[new create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.station = @station
    @review.user = current_user
    @review.save
    if @review.save
      redirect_to stations_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to stations_path, status: :see_other
  end

  private

  def set_station
    @station = Station.find(params[:station_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating, :photo)
  end
end
