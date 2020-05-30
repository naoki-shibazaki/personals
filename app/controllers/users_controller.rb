class UsersController < ApplicationController
  def new
    logger.debug('★')
    logger.debug(params)
    if params[:bugs_user]
      @user = User.new
    else
      redirect_to root_url
    end
  end
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = '登録が完了しました'
      redirect_to root_url
    else
      flash.now[:danger] = get_random_err_msg
      render :new
    end
  end

  # 編集
  def edit
    @user = User.find(params[:id])
  end

  # 更新処理
  def update
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:password))
        flash[:success] = '更新完了'
        # セッションを切る
        log_out
        # ログイン画面へ遷移
        redirect_to root_url
    else
        flash.now[:danger] = get_random_err_msg
        render :edit
    end
  end

  # 削除
  def destroy
    @user = User.find(params[:id]).destroy
    flash[:success] = '削除完了'
    # セッションを切る
    log_out
    # ログイン画面へ遷移
    redirect_to root_url
  end

end

private

def user_params
  params.require(:user).permit(:email, :password)
end