class Stem < ActiveRecord::Base
  attr_accessible  :content :exam_id
  belongs_to :exam
  has_many :objectives
end
