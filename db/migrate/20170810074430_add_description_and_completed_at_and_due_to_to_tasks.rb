class AddDescriptionAndCompletedAtAndDueToToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :description, :text
    add_column :tasks, :completed_at, :datetime
    add_column :tasks, :due_to, :datetime
  end
end
