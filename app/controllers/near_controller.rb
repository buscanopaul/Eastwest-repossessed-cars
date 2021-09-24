class NearController < ApplicationController
  def index
    
    @city = request.location.city
    @region = request.location.region

    @cars = Car.where('city LIKE ?', "%#{@city}%").where('region LIKE ?', "%#{@region}%")
  end
end
