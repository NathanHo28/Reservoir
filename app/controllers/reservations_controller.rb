class ReservationsController < ApplicationController
  before_filter :load_restaurant

  def show
  	@reservation = Reservation.find(params[:id])
  end

  def create
  	# @reservation = Reservation.new
   #  @reservation.user = current_user
      @restaurant = Restaurant.find(params[:restaurant_id])
      @reservation = @restaurant.reservations.build(reservation_params)

  		if @reservation.save
  			redirect_to restaurants_path notice: "Congratulations! We looks forward to seeing you =<(^o^<)"
  		else
  			render 'restaurants/show'
  		end
  end

  def edit
  	@reservation = Reservation.find(params[:id])
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
  end

  private
  def reservation_params
    params.require(:reservation).permit(:time, :party_size, :restaurant_id, :user_id, :name, :email, :request)
  end

  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
