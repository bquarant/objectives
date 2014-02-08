class Exam < ActiveRecord::Base
  has_many :stems
  has_many :objectives
end
