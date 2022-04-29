require 'rails_helper'

RSpec.describe User, type: :model do
  it "user is valid" do
    user = User.new(
      name: "Jeferson",
      email: "jeferson@auser.com", 
      phone: "91 98844-3322",
      avatar: fixture_file_upload(Rails.root.join("spec", "support", "test-avatar.png"), "image/png"),
      password: "123456" 
    )
    expect(user).to be_valid
    
  end

  it "User is not valid" do
     user = User.new(
      name: "Jeferson",
      email: "jeferson@auser.com", 
      phone: "91 98844-3322",
      password: "123456" 
    )
    expect(user).to_not be_valid
  end  
  
  it "User should have a name" do
     user = User.new(
      email: "jeferson@auser.com", 
      phone: "91 98844-3322",
      avatar: fixture_file_upload(Rails.root.join("spec", "support", "test-avatar.png"), "image/png"),
      password: "123456" 
    )
    expect(user).to_not be_valid
  end 

end
