class NearController < ApplicationController
  def index
    
    @city = request.location.city
    @region = request.location.region
    @latitude = request.location.latitude
    @longitude = request.location.longitude
    @location = request.location

    @cars = Car.where('city LIKE ?', "%#{@city}%").where('region LIKE ?', "%#{@region}%")
  end
end
