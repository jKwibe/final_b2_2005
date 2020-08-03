class PassangersController < ApplicationController
    def show
        @passanger = Passanger.find(params[:id])
    end
    
end