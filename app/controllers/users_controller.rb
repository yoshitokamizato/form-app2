class UsersController < ApplicationController

  def top
    @users = User.all
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to users_path unless @user.errors.any?
  end

  def show
    @user = User.find(params[:id])
    @user.user_programmings.build
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    # redirect_to "/users"
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to "/"
  end

  private

  def user_params
    params.require(:user).permit(:name, :age, :mail, :address, :gender, :program, :image, :skils => [] )
  end

end
