class Response < ActiveRecord::Base
  attr_accessible :objective_id, :stem_id, :user_id, :objectives_attributes, :answers_attributes, :question_id, :user_id
t.integer  "user_id"
t.integer  "objective_id"
t.integer  "stem_id"
t.datetime "created_at"
t.datetime "updated_at"

end
