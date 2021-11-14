class AddBirthAndDeathDatesToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :birth_date, :date
    add_column :people, :death_date, :date
  end
end
