class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :description
      t.belongs_to :state
      t.datetime :inactivated_at

      t.timestamps
    end
    add_index :cities, :state_id
  end
end
