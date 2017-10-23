class AddDeadlineToTask < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :deadline, :datetime
    Task.update_all(deadline: DateTime.now + 3)
  end
end
