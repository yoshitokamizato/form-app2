require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(name: "suzuki", age: 28, mail: "hoge@ne.co.jp", address: "埼玉", gender: "男", program: "HTML", skils: "Ruby"),
      User.create!(name: "suzuki", age: 28, mail: "hoge@ne.co.jp", address: "埼玉", gender: "男", program: "HTML", skils: "Ruby")
    ])
  end

  it "renders a list of users" do
    render
  end
end
