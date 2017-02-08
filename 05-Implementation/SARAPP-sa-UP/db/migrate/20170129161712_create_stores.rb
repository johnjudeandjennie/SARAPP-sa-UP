class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      t.string :Store_Name
      t.string :Store_Location

      t.timestamps
    end
  end
end
