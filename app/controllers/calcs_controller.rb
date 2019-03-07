class CalcsController < ApplicationController
  def show
    int_first = params[:int_first].to_i
    arithmetic = params[:arithmetic]
    int_second = params[:int_second].to_i
    case arithmetic
    when "addition" then
      @answer = int_first + int_second
    when "subtraction" then
      @answer = int_first - int_second
    when "multiplication" then
      @answer = int_first * int_second
    when "division" then
      @answer = int_first / int_second
    else
    end
  end
end