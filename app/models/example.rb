class Example < ApplicationRecord
	has_many :example_and_stones, dependent: :destroy
	has_many :stones, through: :example_and_stones
end
