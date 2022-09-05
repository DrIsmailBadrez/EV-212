class ReviewsController < ApplicationController
  before_action :set_station, only: %i[new create]
  def create
    @review = Review.new(review_params)
    @review.station = @station
    @review.save
    redirect_to station_path(@station)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to station_path(@review.station), status: :see_other
  end

  private

  def set_station
    @station = Station.find(params[:station_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
