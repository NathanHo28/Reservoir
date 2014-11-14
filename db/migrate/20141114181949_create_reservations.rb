class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :time
      t.integer :party_size
      t.integer :restaurant_id
      t.string :name
      t.string :email
      t.string :request

      t.timestamps
    end
  end
end
