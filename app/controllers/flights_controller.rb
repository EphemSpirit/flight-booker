class FlightsController < ApplicationController

  def index
    @airports = Airport.all.map{ |x| [x.code, x.id] }
    @times = Flight.all.map{ |x| [x.departure] }
    @passengers = [1, 2, 3, 4]
  end

  private

    def flight_params
      params.require(:flight).permit(:from_airport, :to_airport, :departure)
    end

end
