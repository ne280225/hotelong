class ReservationsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @Reservation = Reservation.new
    @room_id = params[:room_id]
    @room_number = params[:room_number]
  end

  def confirm
    @Reservation = Reservation.new(params[:reservation])
    if @reservation.valid?
      render :action => 'confirm'
    else
      render :action => 'new'
    end
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
