if @father.present?
  json.father do 
    json.first_name @father.first_name
    json.last_name @father.last_name
    json.sex @father.sex
  end
end

if @mother.present?
  json.mother do 
    json.first_name @mother.first_name
    json.last_name @mother.last_name
    json.sex @mother.sex
  end
end

json.children @children do |child|
  json.extract! child,
    :first_name,
    :last_name,
    :sex
    
  json.marriage_descendant child.parents_are?(@father, @mother)
end