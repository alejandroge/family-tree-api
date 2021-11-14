json.key_format! camelize: :lower

json.extract! person,
  :id,
  :first_name,
  :last_name,
  :sex,
  :birth_date,
  :death_date