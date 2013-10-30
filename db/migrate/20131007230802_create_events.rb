class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.belongs_to :person
      t.text :description
      t.datetime :start_time
      t.datetime :end_time
      t.datetime :inactivated_at

      t.timestamps
    end
    add_index :events, :person_id
  end
end
