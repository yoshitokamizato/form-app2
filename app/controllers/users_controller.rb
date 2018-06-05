class UsersController < ApplicationController
  def top
    @users = User.all
  end

  def index
    @users = User.all
    @persentage = rand(1..100)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
  end

  def show
    @user_programmings = UserProgramming.where(user_id: params[:id])
    @user = User.find(params[:id])
    @skill = 100
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to "/users"
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to "/"
  end

  private

  def user_params
    params.require(:user).permit(:name, :age, :mail, :address, :gender, :program, :image, :skils => [] )
    # => (:name params[:name], :age params[:age].......)
  end

end
