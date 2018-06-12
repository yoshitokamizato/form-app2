class UserProgrammingsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @users_skill = UserProgramming.new
  end

  def create
    # UserProgramming.create(user_id: params[:user_id], name: programming_params[:name], level: programming_params[:level])
    UserProgramming.find_or_create_by(user_id: params[:user_id], name: programming_params[:name], level: programming_params[:level])
    redirect_to controller: 'users', :action => 'show', :id => params[:user_id]
  end

  def edit
    @users_skill = UserProgramming.find(params[:id])
  end

  def update
    users_skill = UserProgramming.find(params[:id])
    users_skill.update(user_id: params[:user_id], name: programming_params[:name], level: programming_params[:level])
    redirect_to controller: 'users', :action => 'show', :id => params[:user_id]
  end

  private

  def programming_params
    params.require(:user_programming).permit(:user_id, :name, :level)
  end

end
