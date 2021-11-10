class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.boolean :finished
      t.date :assigned
      t.timestamps
    end
  end
end
