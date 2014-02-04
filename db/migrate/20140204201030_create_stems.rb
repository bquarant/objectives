class CreateStems < ActiveRecord::Migration
  def change
    create_table :stems do |t|
      t.string :content
      t.integer :exam_id

      t.timestamps
    end
  end
end
