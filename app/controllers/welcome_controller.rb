class WelcomeController < ApplicationController
  before_action :authentication_required
  
  def index
    @user = current_user
  end
end
