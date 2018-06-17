class AddCategoryToTrades < ActiveRecord::Migration[5.2]
  def change
    add_column :trades, :category, :string
  end
end
