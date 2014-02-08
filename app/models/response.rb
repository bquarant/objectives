class Response < ActiveRecord::Base
  belongs_to :user
  has_one :objective
  has_one :stem
end
