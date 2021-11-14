json.key_format! camelize: :lower

json.people_count @people.count

json.people @people do |person|
  json.partial! 'people/person', person: person
end