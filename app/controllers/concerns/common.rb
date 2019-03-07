module Common
  extend ActiveSupport::Concern
  included do
    def calculation
      case @arithmetic
      when "addition" then
        @answer = @int_first + @int_second
      when "subtraction" then
        @answer = @int_first - @int_second
      when "multiplication" then
        @answer = @int_first * @int_second
      when "division" then
          begin 
            @answer = "#{@int_first / @int_second}..#{@int_first % @int_second}"
          rescue ZeroDivisionError => ex
            @answer = ex.message
          end
      else
      end
    end
  end
end