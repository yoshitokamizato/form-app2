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

    columns do
      column do
        panel "hogehoge" do
        end
      end
      column do
        panel "fugafuga" do
        end
      end
    end

    actions
  end

  #自分でカスタマイズしたshowページへ転送（views/admin/user/_show.erb）
  # show do
  #   render partial: "show"
  # end

  # 新規作成/編集ページ
  form do |f|
    inputs 'new user'  do
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
