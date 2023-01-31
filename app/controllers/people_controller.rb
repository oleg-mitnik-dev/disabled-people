class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      redirect_to @person
    else
      # HTTP error code 422 "Unprocessable entity" indicates that the action could not be processed properly
      # due to invalid data provided. This occurs when there is a data conflict.  
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])

    if @person.update(person_params)
      redirect_to :person
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def person_params
    params.require(:person).permit(:name, :surname)
  end
end
