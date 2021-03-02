class MedicationController < ApplicationController
  def overview
    @user = current_user
  end
end
