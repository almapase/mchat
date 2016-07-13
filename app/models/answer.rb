class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :patient
  has_many :answer_groups
end
