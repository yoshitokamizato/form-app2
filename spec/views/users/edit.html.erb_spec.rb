require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(name: "suzuki", age: 28, mail: "hoge@ne.co.jp", address: "埼玉", gender: "男", program: "HTML", skils: "Ruby"))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do
    end
  end
end
