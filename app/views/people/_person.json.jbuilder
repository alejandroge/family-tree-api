json.extract! person,
  :id,
  :first_name,
  :last_name,
  :sex,
  :birth_date,
  :death_date
  
  json.family_url person_family_url(person) if person.children.exists?