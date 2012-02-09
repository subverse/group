class HomeController < ApplicationController
  def index
    @user = User.all.first
  end

end
