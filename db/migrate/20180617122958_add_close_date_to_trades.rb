class AddCloseDateToTrades < ActiveRecord::Migration[5.2]
  def change
    add_column :trades, :close_date, :datetime
  end
end
