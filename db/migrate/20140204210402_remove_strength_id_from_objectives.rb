class RemoveStrengthIdFromObjectives < ActiveRecord::Migration
  def change
    remove_column :objectives, :strength_id, :integer
  end
end
