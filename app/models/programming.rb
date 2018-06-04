class Programming < ActiveRecord::Base
  has_many :UserProgramming, foreign_key: 'User_id'  # 中間テーブルを介したデータの取り出し
  has_many :User, through: :UserProgramming  # 中間テーブルを介したデータの取り出し
end
