class CreateKpts < ActiveRecord::Migration
  def change
    create_table :kpts do |t|
      t.integer :parent_id
      t.string :category
      t.string :content
      t.integer :iteration_id
      t.boolean :hit

      t.timestamps
    end
  end
end
