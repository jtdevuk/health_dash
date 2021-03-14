class RecordsController < ApplicationController

  def index
    @records = Record.all
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    @record.user_id = current_user.id    
    @record.letter.attach(params[:record][:letter])
    
    if @record.save
      redirect_to records_path
    else
      render "new"
    end
  end

  def show
    @record = Record.find(params[:id])
  end
  
  private

  def record_params
    params.require(:record).permit(:user_id, :name, :description, :category, :appointment_date, :record)
  end
end
