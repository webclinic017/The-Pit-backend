class StockPurchaseSerializer < BaseSerializer
    attribute :qty
    attribute :avg_fill_price
    attribute :user_id
    attribute :symbol
    attribute :created_at
    attribute :take_profit
end