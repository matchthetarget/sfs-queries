class CreatePerformances < ActiveRecord::Migration[5.1]
  def change
    create_table :performances do |t|
      t.integer :artist_id
      t.integer :venue_id
      t.string :show_type
      t.datetime :date
      t.integer :duration

      t.timestamps
    end
  end
end
