# frozen_string_literal: true

json.people @people do |person|
  json.name person.name
  json.last_name person.last_name
end
