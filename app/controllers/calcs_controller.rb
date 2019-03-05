class CalcsController < ApplicationController
  def show
    @int_first = params[:int_first].to_i
    @arithmetic = params[:arithmetic]
    @int_second = params[:int_second].to_i
    if @arithmetic == "addition"
      @answer = @int_first + @int_second
    elsif @arithmetic == "subtraction"
      @answer = @int_first - @int_second
    elsif @arithmetic == "multiplication"
      @answer = @int_first * @int_second
    elsif @arithmetic == "division"
      @answer = @int_first / @int_second
    else
    end
  end
end