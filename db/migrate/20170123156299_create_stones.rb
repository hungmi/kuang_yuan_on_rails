class CreateStones < ActiveRecord::Migration[5.0]
  def change
    create_table :stones do |t|
      t.string :zh_name
      t.string :en_name
      t.string :origin
      t.string :number
      t.string :size
      t.string :feature
      t.string :good_place
      t.text :description
      t.integer :ad_status, default: 0

      t.timestamps
    end
  end
end
