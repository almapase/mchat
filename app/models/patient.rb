class Patient < ActiveRecord::Base
  has_many :answers
end
