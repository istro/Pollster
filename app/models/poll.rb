class Poll < ActiveRecord::Base
  attr_accessible :edit_url, :easy_url, :email, :phone, :name, :description
end
