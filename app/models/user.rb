class User < ActiveRecord::Base
  has_many :answers
  has_many :patients, through: :answers
end
