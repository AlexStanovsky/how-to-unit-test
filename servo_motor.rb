class ServoMotor

  MIN_VALUE = 0
  MAX_VALUE = 100

  attr_reader :current_value

  def initialize(name, incremental_move, initial_val = MIN_VALUE)
    @current_value = initial_val
    @name = name
    @incremental_value = incremental_move
  end

  def change_value_to(new_value)

    raise 'New value is invalid' if new_value > MAX_VALUE || new_value < MIN_VALUE
    return if @current_value == new_value

    while (@current_value != new_value)
      incremental_change = calc_incremental_value(@current_value, new_value, @incremental_value)
      @current_value = @current_value + incremental_change
      puts "Servo #{@name} value is #{@current_value} changed by #{incremental_change}"
    end
  end

  private

  def calc_incremental_value(state, new_state, incremental_move)
    if (new_state > state)
      return [new_state - state,incremental_move].min
    else
      return [new_state - state, -incremental_move].max
    end
  end
end