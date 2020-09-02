class FlightsController < ApplicationController

  def index
    @airport_options = Airport.all.map{ |x| [x.code, x.id] }
    @existing_times = Flight.all.map{ |x| [x.departure] }
    @passengers = [1, 2, 3, 4]
  end

  private

    def flight_params
      params.require(:flight).permit(:from_airport, :to_airport, :departure)
    end

end
