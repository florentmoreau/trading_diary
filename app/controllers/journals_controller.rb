class JournalsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_journal, only: [:edit, :update, :destroy]
  before_action :find_journals, only: [:index, :new, :show, :edit]

  def index
  end

  def new
    @journal = Journal.new
  end

  def show
    @journal = current_user.journals.find(params[:id])
  end

  def create
    @journal = Journal.new(journal_params)
    @journal.user = current_user
      if @journal.save
        redirect_to journal_path(@journal)
      else
        render :new
      end
  end

  def edit
  end

  def update
    if @journal.update(journal_params)
      redirect_to journal_path(@journal)
    else
      render :edit
    end
  end

  def destroy
    @journal.destroy
    redirect_to journals_path
  end

  private
  def journal_params
    params.require(:journal).permit(:name, :category)
  end

  def find_journal
    @journal = Journal.find(params[:id])
  end

  def find_journals
    @journals = Journal.all
  end
end
