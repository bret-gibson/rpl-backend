class ReservationsController < ApplicationController

    def index
        reservations = Reservations.all
        render json: reservations.to_json
      end
    
      def show
        reservation = Reservation.find(params[:id])
        render json: reservation.to_json
      end
    
      def create
        reservation = Reservation.create(username: params[:username])
        render json: reservation.to_json
      end



end
