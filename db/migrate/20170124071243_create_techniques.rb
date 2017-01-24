class CreateTechniques < ActiveRecord::Migration[5.0]
  def change
    create_table :techniques do |t|
      t.string :zh_name
      t.string :en_name
      t.text :description

      t.timestamps
    end
  end
end
