require 'rspec'
require 'pry'
require_relative '../last_version/box_factory'

#  Verifying side-effects on another object
describe UselessBox do
  it 'switch will turn off the box' do

    state_machine = StateMachine.new

    state_machine.set_state(States::ON, {Actions::ON => States::ON,
                                         Actions::OFF => States::OFF})
    box = UselessBox.new(state_machine)

    box.flip_switch

    expect(state_machine.current_state).to eq(States::OFF)
  end
end


describe StateMachine do
  it 'current state is change when invoking action' do

    state_machine = StateMachine.new

    state_machine.set_state(States::ON, {Actions::ON => States::ON,
                                         Actions::OFF => States::OFF})

    state_machine.invoke_action(Actions::OFF)

    expect(state_machine.current_state).to eq(States::OFF)
  end
end