class AddReconfirmableFieldToUsers < ActiveRecord::Migration
  def change
    add_column :users, :reconfirmable, :string
  end
end
