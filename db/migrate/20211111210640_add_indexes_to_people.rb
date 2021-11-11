class AddIndexesToPeople < ActiveRecord::Migration[6.0]
  def change
    add_index :people, :father_id
    add_index :people, :mother_id
    add_index :people, :sex

    add_index :people, [:father_id, :mother_id]
  end
end
