class CalcsController < ApplicationController
  def show
    int_first = params[:int_first].to_i
    arithmetic = params[:arithmetic]
    int_second = params[:int_second].to_i
    @answer = case arithmetic
              when "addition" then
                int_first + int_second
              when "subtraction" then
                int_first - int_second
              when "multiplication" then
                int_first * int_second
              when "division" then
                int_first / int_second.to_f
              end
  end
end