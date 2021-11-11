json.people_count @people.count

json.people @people do |person|
  json.extract! person,
    :first_name,
    :last_name,
    :sex
end