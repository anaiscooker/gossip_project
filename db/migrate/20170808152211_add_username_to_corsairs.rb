class AddUsernameToCorsairs < ActiveRecord::Migration[5.1]
  def change
    add_column :corsairs, :username, :string
  end
end
