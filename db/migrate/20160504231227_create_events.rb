class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.text :description
      t.datetime :start_time
      t.datetime :end_time
      t.string :time_zone
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
