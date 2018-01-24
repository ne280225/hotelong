class RoomSearchForm
  include ActiveModel::Model

  attr_accessor  :room_id

  def search
    rel = Room

    rel = rel.where('id' => room_id) if room_id.present?

    rel
  end
end
