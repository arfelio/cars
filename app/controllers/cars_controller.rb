class CarsController < ApplicationController
  before_action :set_car, only: [:show, :update, :destroy]
  def index
  	 respond_to do |format|
      format.json { render json: Car.all }
    end
  end
  def show
    respond_to do |format|
      format.json { render json: @car }
    end
  end

  def update
    respond_to do |format|
      if @car.update(car_params)
        format.json { render json: @car, status: :ok }
      else
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    @car = Car.new(car_params)
    respond_to do |format|
      if @car.save
        format.json { render json: @car, status: :created }
      else
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @car.destroy
        format.json { render json: Car.all, status: :ok }
      else
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_car
      @car = Car.find(params[:id])
    end

    def car_params
      params.require(:car).permit(:id, :make, :model, :color, :condition)
    end
end
