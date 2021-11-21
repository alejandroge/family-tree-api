class Api::PeopleController < ApplicationController
  before_action :authenticate_user!

  def index
    @people = Person.all

    render_jsonapi_response(@people)
  end
  
  def create
    @person = Person.new(person_params)
    @person.save!

    render_jsonapi_response(@person)
  end
  
  def family
    person = Person.find(params[:person_id])
    
    @father = person.is_male? ? person : person.current_spouse
    @mother = person.is_female? ? person : person.current_spouse
    
    @children = person.children_with_current_spouse
  end

private
  def person_params
    params.require(:person)
      .permit(:first_name, :last_name, :sex, :birth_date, :death_date, :father_id, :mother_id)
  end
end
