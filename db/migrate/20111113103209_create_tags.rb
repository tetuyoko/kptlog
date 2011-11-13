class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.references :project

      t.timestamps
    end
    add_index :tags, :project_id
  end
end
