# frozen_string_literal: true

class UpdatePeopleTable < ActiveRecord::Migration[6.0]
  def change
    add_reference :people, :father
    add_reference :people, :mother
  end
end
