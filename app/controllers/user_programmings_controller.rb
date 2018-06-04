class UserProgrammingsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @user.user_programmings.build
    @users_skill = Programming.new
  end

  def create
    @user = User.find(params[:user_id])
    @programming = @user.programmings.new(users_skill_params)
    if @programming.save!
      # DB保存成功時の処理
    else
      # DB保存失敗時の処理
    end
  end

  private

  def users_skill_params
    params.require(:programming).permit(:user_id, :name, :skill)
  end
end
