class Technique < ApplicationRecord
	has_many :technique_and_stones, dependent: :destroy
	has_many :stones, through: :technique_and_stones

	validates :name, presence: true
end
