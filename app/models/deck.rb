class Deck < ApplicationRecord
	has_many :card, dependent: :destroy
	validates :name, presence: true, length: {maximum:100}
end
