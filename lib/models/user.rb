class User < ActiveRecord::Base

has_many :responses
has_many :answers, through: :responses


end
