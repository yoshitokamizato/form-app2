require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(name: "suzuki", age: 28, mail: "hoge@ne.co.jp", address: "埼玉", gender: "男", program: "HTML", skils: "Ruby"))
  end

  it "renders attributes in <p>" do
    render
  end
end
