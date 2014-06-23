require_relative '../actions/actions'
require_relative '../servo_motor'
require_relative 'useless_box'
require_relative '../states/base_useless_box_state'
require_relative '../states/state_off'
require_relative '../states/state_on'

class BoxFactory
  def self.create_useless_box

    states = {}

    states[States::ON] = {Actions::ON => States::ON,
                          Actions::OFF => States::OFF}

    states[States::OFF] = {Actions::ON => States::ON,
                           Actions::OFF => States::OFF}

    UselessBox.new(states,States::OFF).flip_switch

    return  UselessBox.new(states,States::OFF)

  end
end