ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    column :hoge
    actions
  end

  #検索条件
  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  #編集画面のフォーム
  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
