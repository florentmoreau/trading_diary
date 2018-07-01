class DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
    @journals = current_user.journals.all
  end
end
