class AddOrderToChapters < ActiveRecord::Migration
  def change
    add_column :chapters, :order, :integer, default: 1
  end
end
