class TradesController < ApplicationController
  before_action :set_journal, only: [:new, :create, :edit, :destroy]
  before_action :find_trade, only: [:show, :update, :destroy]
  before_action :find_journals, only: [:new, :edit]

   def index
    @trades = Trade.all
  end

  def new
    @trade = Trade.new
  end

  def show
  end

  def create
    @trade = Trade.new(trade_params)
    @trade.user = current_user
    @trade.journal = @journal

      if @trade.save!
        redirect_to journal_path(@trade.journal_id)
      else
        render :new
      end
  end

  def edit
    @trade = @journal.trades.find(params[:id])
  end

  def update
    if @trade.update(trade_params)
      redirect_to journal_path(@trade.journal_id)
    else
      render :edit
    end
  end

  def destroy
    @trade.destroy
    redirect_to journal_path(@trade.journal_id)
  end

  private

  def trade_params
    params.require(:trade).permit(:trading_value, :category, :size, :open_price, :open_date, :close_price, :close_date, :profit, :comment, :journal)
  end

  def set_journal
    @journal = Journal.find(params[:journal_id])
  end

  def find_trade
    @trade = Trade.find(params[:id])
  end

  def find_journals
    @journals = Journal.all
  end
end
