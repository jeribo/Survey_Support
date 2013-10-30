class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.belongs_to :examination
      t.belongs_to :question
      t.text :set

      t.timestamps
    end
    add_index :answers, :question_id
  end
end
