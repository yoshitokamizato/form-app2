class Form < ActiveRecord::Base

  def hello
    "Hello"
  end

  def search1(id1)
    return Form.find_by_sql(['select * from forms where id >= :id1', {id1: id1}])
  end

  def search2(id1,id2)
    return Form.find_by_sql(['select * from forms where id >= :id1 and id <= :id2', {id1: id1, id2: id2}])
  end

  def search3(food)
    return Form.find_by_sql(['SELECT * FROM forms WHERE CONCAT(id,food,sports,book) LIKE :food', {food: "%#{food}%"}])
  end

  def dispData
    all_data = Form.all
    text = ""

    all_data.each do |data|
      text += "#{data.programming}\n"
    end

    return text

  end

  def dispFood(food2)

    #パラメータが無しの時には「No Data」を表示
    if food2.nil?

      "選択されていません"

    else

      #変数を空文字で初期化
      #checked_food = ""

      #food2.each do |food|
      #  checked_food += "#{food}\n"
      #end

      food2.join("、")

    end

  end


end
