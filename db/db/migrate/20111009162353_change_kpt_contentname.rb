class ChangeKptContentname < ActiveRecord::Migration
  def change
   change_table :kpts do |t|
    t.remove :content
    t.text :body
   end
  end
end
