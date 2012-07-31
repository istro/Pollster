class AddEasyUrlsToPolls < ActiveRecord::Migration
  def change
    add_column :polls, :easy_url, :string
  end
end
