class CarsController < ApplicationController
  before_action :check_isAuthorize?, only: %i[ new create edit update destroy ]
  before_action :set_car, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: %i[index]

  # GET /cars or /cars.json
  def index
    @cars = Car.all
  end

  # GET /cars/1 or /cars/1.json
  def show
  end

  # GET /cars/new
  def new
    @car = current_user.cars.build
  end

  # GET /cars/1/edit
  def edit
  end

  # POST /cars or /cars.json
  def create
    #@car = Car.new(car_params)
    @car = current_user.cars.build(car_params)

    respond_to do |format|
      if @car.save!
        format.html { redirect_to cars_path, notice: "Car was successfully created." }
        format.json { render :show, status: :created, location: cars_path }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cars/1 or /cars/1.json
  def update
    respond_to do |format|
      if @car.update(car_params)
        format.html { redirect_to @car, notice: "Car was successfully updated." }
        format.json { render :show, status: :ok, location: @car }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1 or /cars/1.json
  def destroy
    @car.destroy
    respond_to do |format|
      format.html { redirect_to cars_url, notice: "Car was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def check_isAuthorize?
    if current_user.issuperadmin? || current_user.isadmin?
    else
      redirect_to root_path, notice: "404 Not found"
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_car
    @car = Car.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def car_params
    params.require(:car).permit(:brand, :year, :model, :fuel, :plate_number, :color, :mileage, :price, :deadline, :warehouse, :user_id, :brand_id, :type_id, :image, :featured)
  end
end
