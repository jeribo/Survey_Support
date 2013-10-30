class DropResearch < ActiveRecord::Migration
   def up
    drop_table :researches
  end

  def down
    drop_table :researches
  end
end
