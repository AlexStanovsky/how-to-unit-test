require 'rspec'
require 'pry'
require_relative '../last_version/box_factory'


# Verifying hidden abstraction
describe UselessBox do
  it 'switch will change status on flip' do

    state_machine = StateMachine.new

    state_machine.set_state(States::ON, {Actions::ON => States::ON,
                                         Actions::OFF => States::OFF})

    box = UselessBox.new(state_machine)

    box.flip_switch

    expect(box.switch_state).to eq(Actions::ON)
  end
end

describe UselessBox do
  it 'switch will change status on flip' do

    state_machine = StateMachine.new

    state_machine.set_state(States::ON, {Actions::ON => States::ON,
                                         Actions::OFF => States::OFF})

    box = UselessBox.new(state_machine)

    expect(box.send(:change_switch)).to eq(Actions::ON)
  end
end

describe ToggleSwitch do
  it 'switch will change status on flip' do

    switch = ToggleSwitch.new

    expect(switch.change_switch).to eq(Actions::ON)
  end
end