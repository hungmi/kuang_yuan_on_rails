class CreateExampleAndStones < ActiveRecord::Migration[5.0]
  def change
    create_table :example_and_stones do |t|
    	t.belongs_to :example, foreign_key: true
    	t.belongs_to :stone, foreign_key: true
    	t.index [:example_id, :stone_id], unique: true

      t.timestamps
    end
  end
end