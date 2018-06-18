class JournalsController < ApplicationController
  before_action :authenticate_user!
  def index
    @journals = Journal.all
  end

  def new
    @journal = Journal.new
  end

  def show
    @journals = Journal.all
    @journal = Journal.find(params[:id])
  end

  def create
    @journal = Journal.new(journal_params)
    @journal.user = current_user
      if @journal.save
        redirect_to journals_path
      else
        render :new
      end
  end

  def edit
    @journal = Journal.find(params[:id])
  end

  def update
    @journal = Journal.find(params[:id])
    if @journal.update(journal_params)
      redirect_to journals_path
    else
      render :edit
    end
  end

  def destroy
    @journal = Journal.find(params[:id])
    @journal.destroy
    redirect_to journals_path
  end

  private
  def journal_params
    params.require(:journal).permit(:name, :category)
  end
end
