class PassangerFlightsController < ApplicationController
    def update
        FlightPassanger.create(flight_id: params[:flight_number], passanger_id: params[:id])
        redirect_to "/passangers/#{params[:id]}"
    end
    
end