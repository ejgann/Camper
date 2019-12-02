class CreateLocationItems < ActiveRecord::Migration[6.0]
  def change
    create_table :location_items do |t|
      t.integer :item_id
      t.integer :location_id

      t.timestamps
    end
  end
end
