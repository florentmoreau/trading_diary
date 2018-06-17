class AddOpenDateToTrades < ActiveRecord::Migration[5.2]
  def change
    add_column :trades, :open_date, :datetime
  end
end
