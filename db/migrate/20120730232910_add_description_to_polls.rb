class AddDescriptionToPolls < ActiveRecord::Migration
  def change
    add_column :polls, :description, :string
  end
end
