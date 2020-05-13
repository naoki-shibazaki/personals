class UsersController < ApplicationController
  def new
    @user_create = User.new
  end
  def create
    @user_create = User.new(user_params)
    if @user_create.save
      flash[:success] = '登録が完了しました'
      redirect_to root_url
    else
      flash.now[:alert] = 'なにかがダメでした'
      render :new
    end

  end

end

private

def user_params
  params.require(:user).permit(:email, :password)
end