json.key_format! camelize: :lower

if @father.present?
  json.father do 
    json.partial! 'people/person', person: @father
  end
end

if @mother.present?
  json.mother do 
    json.partial! 'people/person', person: @mother
  end
end

json.children_count @children.size
json.children @children do |child|
  json.partial! 'people/person', person: child
    
  json.marriage_descendant child.parents_are?(@father, @mother)
end