# frozen_string_literal: true

class Person < ApplicationRecord
  belongs_to :father,
             class_name: 'Person',
             optional: true
  belongs_to :mother,
             class_name: 'Person',
             optional: true

  def children
    Person.where(father: self).or(Person.where(mother: self))
  end
end
