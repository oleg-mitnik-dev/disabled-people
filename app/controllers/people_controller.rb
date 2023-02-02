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
      redirect_to @person
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy

    # "303 See Other" redirect status response code indicates that the redirects 
    # don't link to the requested resource itself, but to another page.
    redirect_to root_path, status: :see_other
  end

  private

  def person_params
    params.require(:person).permit(:given_names, :surname)
  end
end
