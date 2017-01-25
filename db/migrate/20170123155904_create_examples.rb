class CreateExamples < ActiveRecord::Migration[5.0]
  def change
    create_table :examples do |t|
      t.string :zh_name
      t.string :en_name
      t.string :date_and_time
      t.text :description
      t.integer :ad_status, default: 0

      t.timestamps
    end
  end
end
