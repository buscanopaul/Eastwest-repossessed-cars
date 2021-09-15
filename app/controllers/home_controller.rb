class HomeController < ApplicationController
  def index
    @cars = Car.order(created_at: :desc).limit(8)
    @latest_features = Car.where(:featured => true).order(updated_at: :desc).limit(1)

    @brands = Brand.all
    @types = Type.all
  end
end
