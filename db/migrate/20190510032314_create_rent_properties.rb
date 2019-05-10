class CreateRentProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :rent_properties do |t|
      t.string :Property_name, null: false
      t.integer :rent, null: false
      t.text :address, null: false
      t.integer :age, null: false
      t.text :note, null: false

      t.timestamps
    end
  end
end
