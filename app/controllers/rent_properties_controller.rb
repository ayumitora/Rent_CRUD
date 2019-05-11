class RentPropertiesController < ApplicationController
  before_action :set_rent_property, only: [:show, :edit, :update, :destroy]

  # GET /rent_properties
  # GET /rent_properties.json
  def index
    @rent_properties = RentProperty.all
  end

  # GET /rent_properties/1
  # GET /rent_properties/1.json
  def show
  end

  # GET /rent_properties/new
  def new
    @rent_property = RentProperty.new
    @station = Station.new
  end

  # GET /rent_properties/1/edit
  def edit
  end

  # POST /rent_properties
  # POST /rent_properties.json
  def create
    @rent_property = RentProperty.new(rent_property_params)
    # @station = Station.new(rent_property_params)

    respond_to do |format|
      if @rent_property.save
        format.html { redirect_to @rent_property, notice: 'Rent property was successfully created.' }
        format.json { render :show, status: :created, location: @rent_property }
      else
        format.html { render :new }
        format.json { render json: @rent_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rent_properties/1
  # PATCH/PUT /rent_properties/1.json
  def update
    respond_to do |format|
      if @rent_property.update(rent_property_params)
        format.html { redirect_to @rent_property, notice: 'Rent property was successfully updated.' }
        format.json { render :show, status: :ok, location: @rent_property }
      else
        format.html { render :edit }
        format.json { render json: @rent_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rent_properties/1
  # DELETE /rent_properties/1.json
  def destroy
    @rent_property.destroy
    respond_to do |format|
      format.html { redirect_to rent_properties_url, notice: 'Rent property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rent_property
      @rent_property = RentProperty.find(params[:id])
      # @rent_property = RentProperty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rent_property_params
      params.require(:rent_property).permit(:Property_name, :rent, :address, :age, :note)
      # station.require(:station).permit(:route_name, :station_name, :walking_minutes)
    end

end
