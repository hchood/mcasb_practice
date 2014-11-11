class AddApiKeyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :api_key, :string

    User.all.each do |user|
      if user.api_key.nil?
        user.api_key = user.generate_api_key
        if user.save
          puts "Set #{user.username}'s api key."
        else
          puts "FAILED TO SET #{user.username.upcase}'S API KEY."
        end
      else
        puts "#{user.username} already has an api key."
      end
    end

    change_column_null :users, :api_key, true
    add_index :users, :api_key, unique: true
  end
end
