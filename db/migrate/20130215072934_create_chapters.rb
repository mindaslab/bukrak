class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :title
      t.text :content
      t.references :book

      t.timestamps
    end
    add_index :chapters, :book_id
  end
end
