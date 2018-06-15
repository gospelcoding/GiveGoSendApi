class UsersController < ApplicationController
  def create
    @user = User.create(user_params)
    render :show
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update()

  private

  def user_params
    params.require(:user).permit(
                                    :name, 
                                    :email, 
                                    :password
                                  )
  end
end
