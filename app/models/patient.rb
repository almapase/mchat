class Patient < ActiveRecord::Base
  has_many :answers
  has_many :answer_groups, through: :answers
end
