class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :user_id
      #t.spatial :latlon, :geographic => true
      t.column  "latlon", :point, null: false
      t.timestamps
    end
  end
end
