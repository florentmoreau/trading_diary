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
        redirect_to journals_path
      else
        render :new
      end
  end

  def edit
    @trade = trade.find(params[:id])
  end

  def update
    @trade = trade.find(params[:id])
    if @trade.update(trade_params)
      redirect_to trades_path
    else
      render :edit
    end
  end

  def destroy
    @trade = trade.find(params[:id])
    @trade.destroy
    redirect_to trades_path
  end

  private
  def trade_params
    params.require(:trade).permit(:trading_value, :journal)
  end
end
