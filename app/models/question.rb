class Question < ActiveRecord::Base
  attr_accessible :poll_id, :question, :body
  belongs_to :poll
end
