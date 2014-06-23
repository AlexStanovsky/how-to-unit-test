class IIlegalAction < StandardError ;end

class StateMachine

  attr_reader :current_state

  def initialize
    @states ={}
    @current_state = nil
  end

  def is_action_legal?(action)
    return @states[@current_state].has_key?(action)
  end

  def set_state(state, actions)
    @current_state = state unless @current_state
    @states[state] = actions
  end

  def invoke_action(action)
    if (@state_machine.is_action_legal?(action))
      @current_state = set_next_state(action)
    else
      raise IIlegalAction
    end
  end

  private

  def set_next_state(action)
    return @states[@current_state][action]
  end

end