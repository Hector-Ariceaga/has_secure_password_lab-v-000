class WelcomeController < ApplicationController
  before_action :authentication_required

  def index
  end
end
