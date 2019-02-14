class Question < ActiveRecord::Base
  belongs_to :test
  has_many :responses
  has_many :users, through: :responses
end
