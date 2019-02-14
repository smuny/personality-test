class User < ActiveRecord::Base

has_many :responses
has_many :questions, through: :responses
has_many :tests, through: :questions


end
