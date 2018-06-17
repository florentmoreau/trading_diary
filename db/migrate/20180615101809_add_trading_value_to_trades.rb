class AddTradingValueToTrades < ActiveRecord::Migration[5.2]
  def change
    add_column :trades, :trading_value, :string
  end
end
