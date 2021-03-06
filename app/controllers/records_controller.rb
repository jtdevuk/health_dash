class RecordsController < ApplicationController

  before_action :set_record, only: [:destroy, :show, :edit, :update]

  def index
    if params[:category]
      @records = Record.filter_by_category(params[:category])
    elsif params[:start_date] && params[:end_date]
      @records = Record.filter_by_date(params[:start_date], params[:end_date])
    else
      @records = Record.all
    end
    @categories = Record.get_categories
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

  def update
    if @record.update(record_params)
      @record.letter.attach(params[:record][:letter]) if params[:record][:letter]
      redirect_to records_path
    else
      render "edit"
    end
  end  

  def destroy
    @record.destroy
    redirect_to records_path
  end

  def show
  end

  def edit
  end
  
  private

  def set_record
    @record = Record.find(params[:id])
  end

  def record_params
    params.require(:record).permit(:user_id, :name, :description, :category, :date, :record, :appointment_id)
  end
end
