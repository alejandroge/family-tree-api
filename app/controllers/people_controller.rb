# frozen_string_literal: true

class PeopleController < ApplicationController
  def index
    @people = Person.all.order(:birthday)

    respond_to do |format|
      format.html
      format.json { render json: @people }
    end
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)

    @person.save
    redirect_to action: :index
  end

  private

  def person_params
    params.require(:person)
          .permit(:name, :last_name, :birthday)
  end
end
