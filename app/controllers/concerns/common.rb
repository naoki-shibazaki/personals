module Common
  extend ActiveSupport::Concern
  
  included do
    # 作ったメソッドここに追加
    helper_method :get_random_err_msg
    helper_method :postit_color
  end
  
  # ##### メソッドを定義 #####
  # ポストイットカラー表示
  def postit_color
    colors_arr = []
    colors_arr.push('rgba(240, 255, 0, 0.07)') # 黄色
    colors_arr.push('rgba(255, 0, 0, 0.07')   # 赤
    colors_arr.push('rgba(4, 255, 0, 0.05)')   # 緑
    colors_arr.push('rgba(0, 226, 255, 0.07)') # 青
    colors_arr.push('rgba(93, 1, 255, 0.05)')  # 紫
    return colors_arr
  end

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