class UserProgrammingsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @users_skill = UserProgramming.new
  end

  def create
    # @user = User.find(params[:user_id])
    # @programming = @user.programmings.build(users_skill_params)
    # if @programming.save!
    #   # DB保存成功時の処理
    # else
    #   # DB保存失敗時の処理
    # end

    UserProgramming.create(user_id: params[:user_id], name: programming_params[:name], level: programming_params[:level])
    redirect_to controller: 'users', :action => 'show', :id => params[:user_id]
  end

  def edit
    @user = User.find(params[:user_id])
    @user.user_programmings.build
  end



  private

  # def users_skill_params
  #   params.require(:programming).permit(:name, :skill)
  # end

  def programming_params
    params.require(:user_programming).permit(:user_id, :name, :level)
  end

end
