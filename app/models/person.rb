class Person < ApplicationRecord
    # バリデーション
    validates :first_name, presence: true
    validates :last_name, presence: true

    # キーワード検索用
    scope :with_keywords, -> keywords {
        if keywords.present?
          columns = [:last_name, :first_name]
          where(keywords.split(/[[:space:]]/).reject(&:empty?).map {|keyword|
            columns.map { |a| arel_table[a].matches("%#{keyword}%") }.inject(:or)
          }.inject(:and))
        end
      }
end
