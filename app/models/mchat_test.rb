class MchatTest < ActiveRecord::Base
  has_many :answer_groups
  has_many :answers, through: :answer_groups
end
