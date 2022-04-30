FactoryBot.define do
  factory :user do
    name { "Jeferson Silva" }
    email { "jeferson@user.com" }
    phone { "91 99999-9987" }
    avatar { Rack::Test::UploadedFile.new(Rails.root.join('spec/support/test-avatar.png'), 'image/png') }
    password { "123456" }
  end
end