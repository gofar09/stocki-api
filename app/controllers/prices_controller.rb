class PricesController < ProtectedController
  before_action :set_price, only: [:index, :show, :update, :destroy]

  # GET /prices
  def index
    # binding.pry
    @prices = HTTParty.get('https://www.alphavantage.co/query?',
      :headers => { 'Content-Type' => 'application/json' },
      query: { 'function' => 'BATCH_STOCK_QUOTES', 'symbols' => params['price']['symbol'],
      'apikey' => 'LJVNN3W1ZUYE40G' })
    render json: @prices
  end

  # GET /prices/1
  def show
    render json: @price
  end

  # POST /prices

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_price

      # @p = Price.find(params[:symbol])
      # puts "Symbol is #{@symbol}"
  end

    # Only allow a trusted parameter "white list" through.
  def price_params
    params.require(:symbol).permit(:price)
    end
end
