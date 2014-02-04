class CreateQuestionStems < ActiveRecord::Migration
  def change
    create_table :question_stems do |t|
      t.string :stem

      t.timestamps
    end
  end
end
