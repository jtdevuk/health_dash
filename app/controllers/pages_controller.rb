class PagesController < ApplicationController
  before_action :authenticate_user!
  def dash
    @user = current_user
  end
end
