# frozen_string_literal: true

class RecordsController < ApplicationController
  before_action :set_record, only: %i[destroy show edit update]

  def index    
    @records = if params[:category]
                 current_user.records.filter_by_category(params[:category])
               elsif params[:start_date] && params[:end_date]
                 current_user.records.filter_by_date(params[:start_date], params[:end_date])
               else
                 current_user.records.all
               end
    @categories = current_user.records.get_categories
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
      render 'new'
    end
  end

  def update
    if @record.update(record_params)
      @record.letter.attach(params[:record][:letter]) if params[:record][:letter]
      redirect_to records_path
    else
      render 'edit'
    end
  end

  def destroy
    @record.destroy
    redirect_to records_path
  end

  def show; end

  def edit; end

  private

  def set_record
    @record = Record.find(params[:id])
  end

  def record_params
    params.require(:record).permit(:user_id, :name, :description, :category, :date, :record, :appointment_id)
  end
end
