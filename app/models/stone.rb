class Stone < ApplicationRecord
	has_many :example_and_stones, dependent: :destroy
	has_many :examples, through: :example_and_stones
	has_many :technique_and_stones, dependent: :destroy
	has_many :techniques, through: :technique_and_stones

	validates :zh_name, presence: true

	include Expressive
end
