class RemoveParentIdFromPeople < ActiveRecord::Migration[6.0]
  def change
    remove_column :people, :parent_id
  end
end
