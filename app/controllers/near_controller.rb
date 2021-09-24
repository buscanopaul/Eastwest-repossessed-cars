class NearController < ApplicationController
  def index
    @response = Faraday.get("http://ip-api.com/json")
    @response_result = JSON.parse(@response.body)
    @region = @response_result['regionName']
    @city = @response_result['city']

    # @cars = Car.find_by(city: @city, region: @region)
    @cars = Car.where('city LIKE ?', "%#{@city}%").where('region LIKE ?', "%#{@region}%")
    

    @cityTest = request.location.city
    @regionTest = request.location.region
  end
end
