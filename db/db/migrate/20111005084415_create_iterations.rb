class CreateIterations < ActiveRecord::Migration
  def change
    create_table :iterations do |t|
      t.integer :project_id
      t.string :name
      t.date :start_date
      t.date :exit_date
      t.string :status

      t.timestamps
    end
  end
end
