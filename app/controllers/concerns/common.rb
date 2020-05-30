module Common
  extend ActiveSupport::Concern
  
  included do
    # 作ったメソッドここに追加
    helper_method :get_random_err_msg
    helper_method :postit_color
    helper_method :get_random_images
  end
  
  # ##### メソッドを定義 #####
  
  # エラーメッセージランダム表示
  def get_random_err_msg
    msg_arr = %w(
      なんかちがう
      えー(=ω=；)
      🍐🍐🍐🍐
      ＿|￣|○
      (｢･ﾛ･)｢(｢･ﾛ･)｢(｢･ﾛ･)｢(｢･ﾛ･)｢
      こまる！
      えらー
      ERROR
      エラー
      (｀；ω；´)ぴえん
    )
    msg_arr.shuffle[0]
  end

end