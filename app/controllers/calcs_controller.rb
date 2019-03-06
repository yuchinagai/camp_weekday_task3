class CalcsController < ApplicationController
include Common 
  def show
      @int_first = params[:int_first].to_i
      @arithmetic = params[:arithmetic]
      @int_second = params[:int_second].to_i
    calculation
  end
end