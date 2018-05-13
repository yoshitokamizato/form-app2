class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|

      #ここの部分だけ追記
      #カラムの名前と格納するデータの種類を記述
      #注意！！ => マイグレーションを実行しないとデータベースに設定が反映されない
      #↓ここから
      t.string :food
      t.string :sports
      t.string :book
      t.string :foods
      t.string :dinner
      t.string :gender
      t.string :programming
      t.timestamps
      #↑ここまで

    end
  end
end
