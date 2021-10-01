class CreateMyTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :my_tasks do |t|
      t.string :title
      t.text :description
      t.boolean :public

      t.timestamps
    end
  end
end
