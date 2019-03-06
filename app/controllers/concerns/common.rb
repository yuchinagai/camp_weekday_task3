module Common
  extend ActiveSupport::Concern
  included do
    def calculation
      if @arithmetic == "addition"
        @answer = @int_first + @int_second
      elsif @arithmetic == "subtraction"
        @answer = @int_first - @int_second
      elsif @arithmetic == "multiplication"
        @answer = @int_first * @int_second
      elsif @arithmetic == "division" && @int_second == 0 
        @answer = "divided by 0"
      elsif @arithmetic == "division" && (@int_first % @int_second) != 0
        @answer = "#{@int_first / @int_second}..#{@int_first % @int_second}"
      elsif @arithmetic == "division"
        @answer = @int_first / @int_second
      else
      end
    end
  end
end

