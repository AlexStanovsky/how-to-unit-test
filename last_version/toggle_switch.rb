class ToggleSwitch

  def initialize(initial_state = 0)
    @switch_state = initial_state
  end

  def change_switch
    @switch_state = (@switch_state + 1) % Actions::SWITCH_STATUSES.size
    return switch_state
  end

  def switch_state
    return Actions::SWITCH_STATUSES[@switch_state]
  end
end