class CreateContexts < ActiveRecord::Migration[6.1]
  def change
    create_table :contexts do |t|
      t.string :name
      t.boolean :generated
      t.timestamps
    end
  end
end
