class CreateAttachments < ActiveRecord::Migration[5.0]
  def change
    create_table :attachments do |t|
      t.string :image
      t.references :imageable, polymorphic: true, index: true
      t.boolean :cover, default: false

      t.timestamps
    end
  end
end
