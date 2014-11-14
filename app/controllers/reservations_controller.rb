class ReservationsController < ApplicationController
  def show
  	@reservation = Reservation.find(params[:id])
  end

  def create
  	@reservation = Reservation.new
  		if @reservation.save
  			redirect_to restaurant_url notice: "Congratulations! We looks forward to seeing you =<(^o^<)"
  		else
  			render :new
  		end
  end

  def edit
  	@reservation = Reservation.find(params[:id])
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to restaurants_url
  end

  private
  def reservation_params
    params.require(:reservation).permit(:time, :party_size, :restaurant_id, :name, :email, :request)
  end
end
