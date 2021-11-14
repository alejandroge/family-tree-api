class PeopleController < ApplicationController
  def index
    @people = Person.all
  end
  
  def family
    person = Person.find(params[:person_id])
    
    if person.is_male?
      @father = person
      @mother = person.current_spouse
    else
      @mother = person
      @father = person.current_spouse
    end
    
    @children = person.children_with_current_spouse
  end
end
