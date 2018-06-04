class Programming < ActiveRecord::Base
  has_many :user_programming, foreign_key: 'User_id'  # 中間テーブルを介したデータの取り出し
  has_many :user, through: :user_programming  # 中間テーブルを介したデータの取り出し
end
