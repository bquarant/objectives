class Objective < ActiveRecord::Base
  has_many :responses
  belongs_to :exam
end
