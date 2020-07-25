class AddInfoColumnsToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :name, :string
    add_column :people, :last_name, :string
    add_column :people, :birthday, :date
  end
end
