crumb :root do
  link "Home", root_path
end

crumb :users do
  link 'ユーザー一覧', users_path
end

crumb :user do |user|
  link "#{user.name}", user_path(user)
  parent :users
end
