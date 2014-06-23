module States
  class StateOff < BaseUselessBoxState
    def do_concrete_state(useless_box)
      useless_box.handle_unit.change_value_to(0)
      useless_box.handle_status
      useless_box.cover_unit.change_value_to(0)
      useless_box.cover_status
    end
  end

  OFF = StateOff.new
end