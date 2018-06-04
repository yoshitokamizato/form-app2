class UsersSkillsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @users_skill = UsersSkill.new
  end

  def create
    p params[:users_skill][:skill]
    UsersSkill.create(users_skill_params)
  end

  private

  def users_skill_params
    params.require(:users_skill).permit(:user_id, :name, :skill)
  end

end
