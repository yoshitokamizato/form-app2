ActiveAdmin.register User do

  #モデルに紐づいたカラムが作成される
  index do
    selectable_column
    id_column
    column :name
    column :age
    column :mail
    column :address
    column :gender
    column :program
    column :skils
    column :created_at
    actions
  end

  # 新規作成/編集ページ
  form do |f|
    inputs  do
      input :name
      input :age
      input :mail
      input :address
      input :gender
      input :program
      input :skils
    end

    actions
  end

end
