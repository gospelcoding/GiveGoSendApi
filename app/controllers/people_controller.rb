class PeopleController < ApplicationController
  def create
    @person = Person.create(person_params)
    render :show
  end

  def show
    @person = Person.find(params[:id])
  end

  private

  def person_params
    params.require(:person).permit(:name, :email, :password)
  end
end
