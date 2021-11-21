class SerializablePerson < JSONAPI::Serializable::Resource
  type 'people'

  attributes :first_name, :last_name, :sex, :birth_date, :death_date
  attributes :has_children
  
  attribute :has_children do
    @object.children.exists?
  end
end