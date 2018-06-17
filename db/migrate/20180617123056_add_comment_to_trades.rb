class AddCommentToTrades < ActiveRecord::Migration[5.2]
  def change
    add_column :trades, :comment, :text
  end
end
