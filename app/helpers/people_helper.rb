module PeopleHelper

  # ポストイットカラー表示
  def get_postit_color
    colors_arr = []
    colors_arr.push('rgba(240, 255, 0, 0.07)') # 黄色
    colors_arr.push('rgba(255, 0, 0, 0.07')   # 赤
    colors_arr.push('rgba(4, 255, 0, 0.05)')   # 緑
    colors_arr.push('rgba(0, 226, 255, 0.07)') # 青
    colors_arr.push('rgba(93, 1, 255, 0.05)')  # 紫
    return colors_arr
  end
  
  # 画像ランダム表示
  def get_random_images
    @images = []
    # 回数は「assets/images/modal_imgs」配下のファイル数
    40.times do |i|
      @images.push('img' + i.to_s)
    end
  end
end
