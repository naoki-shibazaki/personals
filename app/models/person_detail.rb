class PersonDetail < ApplicationRecord
  #紐付け
  belongs_to :person
  belongs_to :user

  # バリエーション
  validates :category, presence: true
  validates :content, presence: true
end
