require 'rails_helper'

RSpec.describe Post, type: :model do
  it "Post is valid" do
    post = Post.new(
     body: 'Lorem ipsum dolor sit amet, consectetur adipisci elit, 
     sed eiusmod tempor incidunt ut labore et dolore magna aliqua. 
     Ut enim ad minim veniam, quis nostrum exercitationem ullam 
     corporis suscipit laboriosam, nisi ut aliquid ex ea commodi 
     consequatur. Quis aute iure reprehenderit in voluptate velit 
     esse cillum dolore eu fugiat nulla pariatur. Excepteur sint 
     obcaecat cupiditat non proident, sunt in culpa qui officia 
     deserunt mollit anim id est laborum. ',
     users_id: User.new(
      name: "Jeferson",
      email: "jeferson@auser.com", 
      phone: "91 98844-3322",
      avatar: fixture_file_upload(Rails.root.join("spec", "support", "test-avatar.png"), "image/png"),
      password: "123456" 
      )
    )
    User.save



    expect(post).to be_valid 
  end 
end
