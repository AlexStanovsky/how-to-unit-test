require_relative '../actions/actions'
require_relative '../servo_motor'
require_relative 'useless_box'
require_relative '../states/base_useless_box_state'
require_relative '../states/state_off'
require_relative '../states/state_on'
require_relative 'state_machine'
require_relative 'toggle_switch'

class BoxFactory
  def self.create_useless_box

    state_machine = StateMachine.new

    state_machine.set_state(States::OFF, {Actions::ON => States::ON,
                                          Actions::OFF => States::OFF})

    state_machine.set_state(States::ON, {Actions::ON => States::ON,
                                          Actions::OFF => States::OFF})

    return UselessBox.new(state_machine)
  end
end