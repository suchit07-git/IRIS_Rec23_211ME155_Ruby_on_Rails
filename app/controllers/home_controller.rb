class HomeController < ApplicationController
  def index
    @CurrentUser = current_user
  end
end
