class Question < ActiveRecord::Base
  has_many :responses
  has_many :users, through: :responses

end
