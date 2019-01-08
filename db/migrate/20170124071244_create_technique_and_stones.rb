class CreateTechniqueAndStones < ActiveRecord::Migration[5.0]
  def change
    create_table :technique_and_stones do |t|
    	t.belongs_to :technique, foreign_key: true
    	t.belongs_to :stone, foreign_key: true
    	t.index [:technique_id, :stone_id], unique: true

      t.timestamps
    end
  end
end
