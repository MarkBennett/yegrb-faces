namespace :db do
  desc "Generate some fake users"
  task :populate => :environment do
    require 'populator'
    require 'faker'

    User.delete_all

    User.create(:email=>'scott@scottbrooks.ca', :display_name=>'Scott', :password=>'test', :password_confirmation=>'test')
    User.create(:email=>"mark@burmis.ca", :display_name=>'Mark', :password=>'test', :password_confirmation=>'test')


    User.populate 20 do |user|
      user.email = Faker::Internet.email
      user.display_name = Faker::Name.name
      # password is yegrb
      user.crypted_password = '2f9252e667e4ca895ac7d07f5b534e01fdc7b0c974b13f4133e21318fb6ad2ce150856130d49b6260eeac4b311a4f10e590a1c9d219f1e9f853b1b39c1edffb1'
      user.password_salt = '8tFRq1cjxdk-fu_pQrQ_'
      user.persistence_token = 'e6e9cc5ae6ceca3658822a55f83fad0ed115a5bf1a50e4b41bfed8fb95cae0643bc22f4865e69d7683e2c4e09162b2febff9ac30ff1b823d5f6760e5a2797943'
      user.single_access_token = 'ywK86zbpQnzN23Xouwyg'
      user.perishable_token = 'VfQjehjLChFWvljMEFf3'
      user.login_count = rand(100)
      user.failed_login_count = 0
    end
  end
end
