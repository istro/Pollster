class AddEditUrlToPolls < ActiveRecord::Migration
  def change
    add_column :polls, :edit_url, :string
  end
end
