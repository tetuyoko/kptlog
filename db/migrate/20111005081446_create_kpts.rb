class CreateKpts < ActiveRecord::Migration
  def change
    create_table :kpts do |t|
      t.integer :parent_id
      t.string :category
      t.boolean :hit
      t.string :content
      t.integer :iteration_id

      t.timestamps
    end
  end
end
