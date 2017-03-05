class CreateTabs < ActiveRecord::Migration[5.0]
  def change
    create_table :tabs do |t|
    	t.string :icon
      t.string :title
      t.string :description
      t.integer :priority

      t.timestamps
    end
  end
end
