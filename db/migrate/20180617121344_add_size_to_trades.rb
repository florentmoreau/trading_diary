class AddSizeToTrades < ActiveRecord::Migration[5.2]
  def change
    add_column :trades, :size, :float
  end
end
