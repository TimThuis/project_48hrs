class Visitor::BookingsController < ApplicationController
  before_action :find_booking, except: [:index]

  def index #view
    if user_signed_in?
      @bookings = current_user.trips.sort {|trip1, trip2| trip2[:date] <=> trip1[:date]}
      @visitor = current_user



      # @bookings = current_user.trips.reject do |booking|
      #   booking.status == 'cancel'
      # end
    else
      redirect_to root_path
    end
  end

  # def show
  # end

  def cancel
    @booking.update(status: 'cancel')
    redirect_to visitor_bookings_path
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
