module States
  class BaseUselessBoxState
    def do_state(useless_box)
      puts "Machine is #{Actions::SWITCH_STATUSES[useless_box.switch_state]}"
      do_concrete_state(useless_box)
    end
  end
end