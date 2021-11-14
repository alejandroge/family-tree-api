class PeopleController < ApplicationController
  def index
    @people = Person.all
  end
  
  def create
    @person = Person.new(person_params)
    
    @person.save!
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

private
  def person_params
    params.require(:person)
      .permit(:first_name, :last_name, :sex, :birth_date, :death_date, :father_id, :mother_id)
  end
end
