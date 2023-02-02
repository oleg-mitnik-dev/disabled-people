class GuardiansController < ApplicationController
  def create
    @person = Person.find(params[:person_id])
    @guardian = @person.guardians.create(guardian_params)
    redirect_to person_path(@person)
  end

  private

  def guardian_params
    #<ActionController::Parameters {... ,"guardian"=>{"name"=>"Guardian Name"}, ...}
    params.require(:guardian).permit(:name)
  end

end
