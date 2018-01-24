class RoomSearchForm
  include ActiveModel::Model

  attr_accessor  :room_id, :plan_id

  def search
    rel = Room

    rel = rel.where('id' => room_id) if room_id.present?
    rel = rel.joins(:plan_room).where("plan_room.plan_id" => plan_id) if plan_id.present?

    rel
  end
end
