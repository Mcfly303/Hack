class AddUsernameAndAgeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :age, :integer
  end
end
