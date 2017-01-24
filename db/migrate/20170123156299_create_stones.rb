class CreateStones < ActiveRecord::Migration[5.0]
  def change
    create_table :stones do |t|
      t.string :name
      t.string :origin
      t.string :feature
      t.text :description

      t.timestamps
    end
  end
end
