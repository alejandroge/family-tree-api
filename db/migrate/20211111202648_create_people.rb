class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :sex

      t.integer :father_id
      t.integer :mother_id
      t.integer :current_spouse_id

      t.timestamps
    end
  end
end
