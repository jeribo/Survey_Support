class AddActivatedToEvent < ActiveRecord::Migration
  def change
    add_column :events, :activated, :boolean
  end
end