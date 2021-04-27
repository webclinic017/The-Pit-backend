class CreateStockPurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :stock_purchases do |t|
      t.string :symbol
      t.float :qty
      t.float :take_profit
      t.float :avg_fill_price
      t.integer :user_id

      t.timestamps
    end
  end
end
