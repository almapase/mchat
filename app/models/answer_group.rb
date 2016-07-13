class AnswerGroup < ActiveRecord::Base
  belongs_to :mchat_test
  belongs_to :answer
end
