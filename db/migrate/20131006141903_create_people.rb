class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :federal_id
      t.string :regional_id
      t.string :social_security
      t.string :mothers_name
      t.string :fathers_name
      t.date :birthday
      t.string :phone1
      t.string :phone2
      t.string :email

      t.timestamps
    end
  end
end
