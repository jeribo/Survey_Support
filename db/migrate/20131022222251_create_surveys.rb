class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.text :description
      t.boolean :activated

      t.timestamps
    end
  end
end
