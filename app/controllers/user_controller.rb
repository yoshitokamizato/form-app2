class UserController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    User.create(user_params)
  end

  def show
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
  end

  def search
    #code
  end

  def searchId
    id1 = params[:id1]
    id2 = params[:id2]
    user = User.new

    if id2.nil? || id2.empty?
      #render :text => "値を入力してください"
      if  id1.nil? || id1.empty?
        flash[:notice] = "入力してください"
        redirect_to action: :search
      end

      return @user = user.searchAll
    end

    @user = user.searchId(id1, id2)
  end

  def searchData
    user = User.new
    @user = user.searchData(params[:user])
  end

  private

  def user_params
    params.require(:user).permit(:name, :age, :mail, :address, :gender, :program, :skils)
  end

end
