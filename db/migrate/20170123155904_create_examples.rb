class CreateExamples < ActiveRecord::Migration[5.0]
  def change
    create_table :examples do |t|
      t.string :zh_name
      t.string :en_name
      t.string :date_and_time
      t.string :place
      t.string :designer
      t.text :description

      t.timestamps
    end
  end
end
