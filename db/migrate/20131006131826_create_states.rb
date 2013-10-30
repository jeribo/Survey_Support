class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :description
      t.string :abbreviated
      t.datetime :inactivated_at

      t.timestamps
    end
  end
end
