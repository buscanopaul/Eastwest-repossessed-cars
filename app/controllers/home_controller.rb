class HomeController < ApplicationController
  def index
    @cars = Car.all
    @brands = Brand.all
    @types = Type.all
  end
end
