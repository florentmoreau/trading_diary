class DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
    @journals = Journal.all
  end
end
