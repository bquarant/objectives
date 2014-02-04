class Stem < ActiveRecord::Base
  belongs_to :exam
  has_many :objectives
end
