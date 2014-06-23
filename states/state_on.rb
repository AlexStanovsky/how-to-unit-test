module States
  class StateOn < BaseUselessBoxState
    def do_concrete_state(useless_box)
      useless_box.cover_unit.change_value_to(100)
      useless_box.cover_status
      useless_box.handle_unit.change_value_to(100)
      useless_box.handle_status
      useless_box.flip_switch
    end
  end

  ON = StateOn.new
end