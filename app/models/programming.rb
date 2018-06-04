class Programming < ActiveRecord::Base
  has_many :user_programmings, foreign_key: 'user_id'  # 中間テーブルを介したデータの取り出し
  has_many :users, through: :user_programmings  # 中間テーブルを介したデータの取り出し
  accepts_nested_attributes_for :user_programmings
end
