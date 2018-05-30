class CreateTanks < ActiveRecord::Migration[5.2]
  def change
    create_table :tanks do |t|
      t.integer :user_id
      t.float :longitude
      t.float :latitude
      t.string :address
      t.string :neighborhood

      t.timestamps
    end
  end
end
