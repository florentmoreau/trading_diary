class RemoveTypeFromTrades < ActiveRecord::Migration[5.2]
  def change
    remove_column :trades, :type, :string
  end
end
