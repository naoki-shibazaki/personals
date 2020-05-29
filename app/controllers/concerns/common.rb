module Common
  extend ActiveSupport::Concern
  
  included do
    # 作ったメソッドここに追加
    helper_method :get_err_msg
  end
  
  # メソッドを定義
  def get_err_msg
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