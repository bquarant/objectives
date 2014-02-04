class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :user_id
      t.integer :objective_id
      t.integer :stem_id

      t.timestamps
    end
  end
end
