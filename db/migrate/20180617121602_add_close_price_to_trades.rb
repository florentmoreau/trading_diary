class AddClosePriceToTrades < ActiveRecord::Migration[5.2]
  def change
    add_column :trades, :close_price, :float
  end
end
