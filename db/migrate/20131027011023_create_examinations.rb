class CreateExaminations < ActiveRecord::Migration
  def change
    create_table :examinations do |t|
      t.belongs_to :person
      t.belongs_to :survey
      t.date :reference_date

      t.timestamps
    end
    add_index :examinations, :person_id
    add_index :examinations, :survey_id
  end
end
