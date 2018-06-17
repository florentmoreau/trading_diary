class AddOpenPriceToTrades < ActiveRecord::Migration[5.2]
  def change
    add_column :trades, :open_price, :float
  end
end
