class UselessBox
  # Move change_switch to switch class
  # Use Illegal state error (should be inside of the state machine)
  # Change status with useless box and check the final state with the state machine

  attr_reader :cover_unit, :handle_unit

  def initialize(state_machine)
    @switch = ToggleSwitch.new
    @cover_unit = ServoMotor.new('Cover',50)
    @handle_unit = ServoMotor.new('Handle',50)
    @state_machine = state_machine
  end

  def flip_switch
    do_action(@switch.change_switch)
  end

  def cover_status
    if cover_unit.current_value == 0
      puts 'Cover is close'
    elsif  cover_unit.current_value == 100
      puts 'Cover is open'
    end
  end

  def handle_status
    if handle_unit.current_value == 0
      puts 'Handle is down'
    elsif  handle_unit.current_value == 100
      puts 'Handle is up'
    end
  end

  private

  def do_action(action)
    current_state = @state_machine.current_state
    next_state = @state_machine.invoke_action(action)

    next_state.do_state(self) unless (current_state == next_state)
  end
end
