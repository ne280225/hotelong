class RoomsController < ApplicationController

  def index
    @search_form = RoomSearchForm.new(params[:search])
    @searchedrooms = @search_form.search
    @searchedrooms = Room.all if @searchedrooms == Room


  end

  def show
    @room = Room.find(params[:id])
    @class_room_person_price = @room.class_room.person_price
    @class_room_style_name = @room.class_room.style_name

    @class_room_expect_count = @room.class_room.expect_count
    @class_room_can_add_bed = @room.class_room.can_add_bed
    @class_room_discount_rate = @room.class_room.discount_rate
    @class_room_surcharge_rate = @room.class_room.surcharge_rate

    @plan_room_id = @room.plan_rooms.ids
  end


end
