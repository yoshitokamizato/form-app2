crumb :root do
  link "Home", root_path
end

crumb :users do
  link '一覧', users_path
end

crumb :new_user do
  link 'ユーザー新規登録', new_user_path
end

crumb :user do |user|
  link "#{user.name}", user_path(user)
  parent :users
end
