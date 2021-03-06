class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
    @room_number = @reservation.room.room_number
    @plan_name = @reservation.plan.name

  end

  def new
    @reservation = Reservation.new
    @room_id = params[:room_id]
    @room_number = params[:room_number]
    @room = Room.find(@room_id)
    @plans = @room.plans


  end

  def confirm
    @reservation = Reservation.new(params[:id])
    if @reservation.valid?
      render :action => 'confirm'
    else
      render :action => 'new'
    end
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to controller: 'mypage', action: 'index'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to :reservations
  end



private

def reservation_params
  params[:reservation].permit(:room_id, :plan_id, :member_id, :guest_count, :start_date, :end_date, :sum_price, :is_extend)
end
end
