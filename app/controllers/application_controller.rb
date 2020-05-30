class ApplicationController < ActionController::Base
  include SessionsHelper
  include Common
  private
   # ログイン済みユーザーかどうか確認
    def logged_in_user
      unless logged_in?
        redirect_to root_url
      end
    end
end
