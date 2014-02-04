class AddExamIdToQuestionStems < ActiveRecord::Migration
  def change
    add_column :question_stems, :exam_id, :integer
  end
end
