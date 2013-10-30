class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :number
      t.string :complement
      t.string :postal_code
      t.belongs_to :city

      t.timestamps
    end
    add_index :addresses, :city_id
  end
end
