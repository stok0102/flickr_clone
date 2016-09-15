class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :location
      t.string :caption
      t.integer :creator_id
      t.attachment :image
      t.timestamps
    end
  end
end
