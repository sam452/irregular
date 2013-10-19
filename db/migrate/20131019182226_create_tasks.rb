class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :category
      t.string :location_name
      t.decimal :lattitude, :precision => 15, :scale => 10, :default => 0.0
      t.decimal :longitude, :precision => 15, :scale => 10, :default => 0.0
      t.text :description
      t.string :photo_url
      t.integer :offer
      t.datetime :expiration

      t.timestamps
    end
  end
end
