class TradesController < ApplicationController
   def index
    @trades = trade.all
  end

  def new
    @trade = Trade.new
  end

  def show
    @trade = Trade.find(params[:id])
  end

  def create
    @trade = Trade.new(trade_params)
    @trade.user = current_user
    @trade.journal = Journal.find(params[:journal_id])
      if @trade.save!
        redirect_to journal_path
      else
        render :new
      end
  end

  def edit
    @trade = Trade.find(params[:id])
  end

  def update
    @trade = Trade.find(params[:id])
    if @trade.update(trade_params)
      redirect_to journal_path
    else
      render :edit
    end
  end

  def destroy
    @trade = Trade.find(params[:id])
    @trade.destroy
    redirect_to journal_path
  end

  private
  def trade_params
    params.require(:trade).permit(:trading_value, :category, :size, :open_price, :open_date, :close_price, :close_date, :profit, :comment, :journal)
  end
end
