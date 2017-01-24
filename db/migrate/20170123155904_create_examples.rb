class CreateExamples < ActiveRecord::Migration[5.0]
  def change
    create_table :examples do |t|
      t.string :name
      t.string :place
      t.string :designer
      t.text :description

      t.timestamps
    end
  end
end
