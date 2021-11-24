class CreateTaskContexts < ActiveRecord::Migration[6.1]
  def change
    create_table :task_contexts do |t|
      t.integer :task_id
      t.integer :context_id
      t.timestamps
    end
    add_foreign_key :task_contexts, :tasks
    add_foreign_key :task_contexts, :contexts
  end
end
