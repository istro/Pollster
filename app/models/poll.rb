class Poll < ActiveRecord::Base
  attr_accessible :edit_url, :easy_url, :name, :description
end
