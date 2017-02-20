class DropTags < ActiveRecord::Migration[5.0]
  def change
  	remove_column :cards, :tag_id
  end
  
end
