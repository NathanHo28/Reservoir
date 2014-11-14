class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :email
      t.integer :capacity
      t.string :menu

      t.timestamps
    end
  end
end
