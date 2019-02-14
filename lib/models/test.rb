class Test < ActiveRecord::Base
has_many :questions
has_many :responses, through: :questions
has_many :users, through: :responses
end
