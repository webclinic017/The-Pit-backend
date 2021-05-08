class Api::V1::StockPurchasesController < Api::V1::BaseController

    def index
        stock_purchases = StockPurchase.all
        render json: serialize_models(stock_purchases)
    end

    def create
        stock_purchase = StockPurchase.create(stock_purchases)

        if stock_purchase.save
            render json: serialize_model(stock_purchase), status: :created
        end
    end

    def update
        stock_purchase = StockPurchase.find(params[:id])
        stock_purchase.update(stock_purchases)        
        render json: serialize_model(property), status: :ok
    end

    private

        def stock_purchases
            params.require(:stock_purchase).permit(:qty, :user_id, :avg_fill_price, :symbol, :take_profit)
        end
end
