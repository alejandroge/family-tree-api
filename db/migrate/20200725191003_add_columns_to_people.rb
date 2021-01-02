# frozen_string_literal: true

class AddColumnsToPeople < ActiveRecord::Migration[6.0]
  def change
    add_reference :people, :parent
  end
end
