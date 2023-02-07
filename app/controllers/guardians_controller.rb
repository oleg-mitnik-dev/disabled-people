class GuardiansController < ApplicationController
  http_basic_authenticate_with name: "jora", password: "123458352", only: :destroy

  def create
    @person = Person.find(params[:person_id])
    @guardian = @person.guardians.create(guardian_params)
    redirect_to person_path(@person)
  end
  
  def destroy
    @person = Person.find(params[:person_id])
    @guardian = @person.guardians.find(params[:id])
    @guardian.destroy
    redirect_to person_path(@person), status: :see_other
  end

  private

  def guardian_params
    #<ActionController::Parameters {... ,"guardian"=>{"name"=>"Guardian Name"}, ...}
    params.require(:guardian).permit(:name, :status)
  end

end
