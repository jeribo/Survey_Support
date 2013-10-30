class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :survey
      t.text :description_question
      t.boolean :mandatory
      t.string :type_field
      t.boolean :activated

      t.timestamps
    end
    add_index :questions, :survey_id
  end
end
