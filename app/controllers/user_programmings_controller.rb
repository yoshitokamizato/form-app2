class UserProgrammingsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @users_skill = UserProgramming.new
  end

  def create
    UserProgramming.find_or_create_by(user_id: params[:user_id], skill_name: programming_params[:skill_name], level: programming_params[:level])
    redirect_to controller: 'users', :action => 'show', :id => params[:user_id]
  end

  def edit
    @users_skill = UserProgramming.find(params[:id])
  end

  def update
    users_skill = UserProgramming.find(params[:id])
    users_skill.update(user_id: params[:user_id], skill_name: programming_params[:skill_name], level: programming_params[:level])
    redirect_to controller: 'users', :action => 'show', :id => params[:user_id]
  end

  def destroy
    users_skill = UserProgramming.find(params[:id])
    users_skill.destroy
    redirect_to controller: 'users', :action => 'show', :id => params[:user_id]
  end

  def search
    user_skill = UserProgramming.new(skill: params[:skill], name: params[:name])
    @users_skill = user_skill.search
  end

  private

  def programming_params
    params.require(:user_programming).permit(:user_id, :skill_name, :level)
  end

end
