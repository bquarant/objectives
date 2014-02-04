class AddStrengthToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :strength, :integer
  end
end
