class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.integer :photo_id
      t.integer :account_id
      t.timestamps
    end
  end
end
