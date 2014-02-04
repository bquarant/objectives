class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.string :content
      t.string :examday
      t.integer :objective_id
      t.integer :stem_id

      t.timestamps
    end
  end
end
