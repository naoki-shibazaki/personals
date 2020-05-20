class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = '登録が完了しました'
      redirect_to root_url
    else
      flash.now[:alert] = 'なにかがダメでした'
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
        flash.now[:alert] = 'なにかがダメでした'
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