class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :front
      t.text :back
      t.references :deck, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
    add_index :cards, [:deck_id, :tag_id]
  end
end
