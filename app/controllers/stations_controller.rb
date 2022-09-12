class StationsController < ApplicationController
  before_action :set_station, only: %i[ show edit update destroy ]

  # GET /stations or /stations.json
  def index
    @stations = Station.all
    @markers = @stations.geocoded.map do |station|
      {
        lat: station.latitude,
        lng: station.longitude,
        info_window: render_to_string(partial: "info_window", locals: { station: station }),
        station_id: station.id,
        image_url: helpers.asset_url("marker.svg")
      }
    end
  end

  # GET /stations/1 or /stations/1.json
  def show
  end

  # GET /stations/new
  def new
    @station = Station.new
    @charger = Charger.new
    @chargers = Charger.all
  end

  # GET /stations/1/edit
  def edit
  end

  # POST /stations or /stations.json
  def create
    @station = Station.new(station_params)
    @station.user = current_user
    respond_to do |format|
      if @station.save
        chargers = params["charger"]
        charger_count = params["charger_count"]
        chargers.each_with_index do |charger_id, index|
          @station_charger = StationCharger.new
          @station_charger.station = @station
          @station_charger.charger_id = charger_id
          @station_charger.charger_count = charger_count[index]
          @station_charger.save
        end
        format.html { redirect_to stations_path, notice: "Station was successfully created." }
        format.json { render :show, status: :created, location: @station }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @station.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stations/1 or /stations/1.json
  def update
    respond_to do |format|
      if @station.update(station_params)
        format.html { redirect_to station_url(@station), notice: "Station was successfully updated." }
        format.json { render :show, status: :ok, location: @station }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @station.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stations/1 or /stations/1.json
  def destroy
    @station.destroy

    respond_to do |format|
      format.html { redirect_to stations_url, notice: "Station was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_station
      @station = Station.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def station_params
      params.require(:station).permit(:name, :address, :user_id, :review_id, :photo)
    end
    def charger_params
      params.require(:charger).permit(:charger_id)
    end
end
