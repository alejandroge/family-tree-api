class Person < ApplicationRecord
  has_parents sex_values: ['male', 'female'], current_spouse: true
    
  def children_with_current_spouse
    children.or(current_spouse&.children || Person.none)
  end
  
  def parents_are?(father, mother)
    self.father_id == father.id &&
      self.mother_id == mother.id
  end
end