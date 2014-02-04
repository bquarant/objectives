class CreateObjectives < ActiveRecord::Migration
  def change
    create_table :objectives do |t|
      t.string :objective
      t.integer :stem_id
      t.integer :exam_id
      t.integer :strength_id

      t.timestamps
    end
  end
end
