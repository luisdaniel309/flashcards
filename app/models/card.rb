class Card < ApplicationRecord
  belongs_to :deck
  validates :front, presence: true, length: {maximum: 55}

  def previous
    Card.where(["deck_id == ? AND id < ?", deck_id, id]).last
  end

  def next
    Card.where(["deck_id == ? AND id > ?", deck_id, id]).first
  end
end
