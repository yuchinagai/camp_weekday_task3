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
      elsif @arithmetic == "division"
          begin
            if 0 != @int_first % @int_second 
              @answer = "#{@int_first / @int_second}..#{@int_first % @int_second}"
              # あまりが0ではないときにこの@answerを表示
            else
              @answer = @int_first / @int_second
              # あまりが0のときにこのanswerを表示
            end
          rescue ZeroDivisionError => ex
            @answer = ex.message
          end
      else
      end
    end
  end
end