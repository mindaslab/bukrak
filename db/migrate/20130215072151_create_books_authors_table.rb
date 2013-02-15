class CreateBooksAuthorsTable < ActiveRecord::Migration
  
  def change
    create_table(:books_authors, id: false) do |t|
      t.integer :book_id
      t.integer :author_id
    end
    add_index :books_authors, :book_id
    add_index :books_authors, :author_id
  end
end
