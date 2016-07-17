class Question < ActiveRecord::Base
  belongs_to :type_test
  has_many :answer_groups
end
