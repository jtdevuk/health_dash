class PagesController < ApplicationController
  before_action :authenticate_user!
  def dash
  end
end
