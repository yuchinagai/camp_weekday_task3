module Common
  extend ActiveSupport::Concern
  included do
    def calculation
      @answer = case @arithmetic
                when "addition"
                  @int_first + @int_second
                when "subtraction"
                  @int_first - @int_second
                when "multiplication"
                  @int_first * @int_second
                when "division"
          begin 
            "#{@int_first / @int_second}..#{@int_first % @int_second}"
          rescue ZeroDivisionError => ex
            ex.message
          end
      else
      end
    end
  end
end