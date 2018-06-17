class AddTypeToTrades < ActiveRecord::Migration[5.2]
  def change
    add_column :trades, :type, :string
  end
end
